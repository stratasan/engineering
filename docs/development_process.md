# Development Process

## Approach

We do continuous delivery rather than sprints. We feel that when a bit of work is ready to go, it shouldn't be held back due to a timeline. We communicate what work has been done through the product team putting together release notes every week and talking about what features have been added over the course of the week. If it is a big feature and people want to use it right away, we will let the company know outside of the product release notes when it is live.

## Delivery expectations

We aim to make expectations clear, but if ever they are not and some work might take longer because of that, we don't play the blame game - we adjust expectations for those waiting on the release of that work; we learn from it and aim to improve the process for next time.

## Git

Good commit messages [matter](http://chris.beams.io/posts/git-commit/).

## ZenHub

We use [ZenHub](http://zenhub.io) for managing ticket priority. This allows us to
visualize and prioritize our work using
[Kanban](https://en.wikipedia.org/wiki/Kanban). It also allows us to add estimates
to work in the form of story points.

We apply story points based on effort/difficulty/complexity, which has only a loose
correlation to time to finish. We use this scale for assigning GitHub ticket
estimations:

| Points | Estimate                                          |
| ------ | ------------------------------------------------- |
| 0.5    | Less than half a day                              |
| 1      | A day or so                                       |
| 3      | About half a week                                 |
| 5      | About a week                                      |
| 8      | Around two weeks                                  |
| 13     | Probably should be broken up into multiple issues |

- During the initial estimate, if we uncover new things that _significantly_ expand
  the scope of the original issue, we will split it into multiple issues (maybe convert the original issue to an epic) and those new issues get estimates.
- If an issue has already been estimated and work has begun on it, we generally do
  not modify the issue unless it becomes apparent that the work will be considerably more complex (going from a 0.5 to a 3, for example).
- As points increase on an issue, there is more necessity for a _design document_.
  This document outlines the plan of attack for addressing an issue. No code is
  required in this document. Instead, we're looking for a description of the
  problem, the code paths involved (ie how things are kicked off, whether in web
  request or background job and where execution ultimately finishes) and how your
  fix will improve things. This document _must be reviewed_ with a senior team
  member that is not yourself. The goal of this document is less a perfect plan but
  rather the opportunity for you to build context around the problem, understand
  what is going awry, and understand all the pieces involved such that when you
  build a plan to fix it, you'll have built a well-defined mental map in your head
  and can demonstrate how your solution effectively addresses the issue with minimal
  added complexity.
  - A design document is required for issues of 5 points and above.

## GitHub issues

Issues are the primary unit of work for our development team. They provide a wealth of information about the work to be done, why we do it, and what it takes for the work to be accepted.

### What makes an issue ready for the development backlog?

Our product management team will often create issues to define new features. For these to be considered development-ready, the following requirements must be met:

- The "Why" must be clear.
- [Acceptance criteria](https://nomad8.com/acceptance_criteria/) must be provided.
- It must have points assigned.
  - Exceptions to this might be bugs or research projects, but these should
    generally be time-boxed.
- Any relevant designs should be completed.

Issues that are considered "Ready" can be moved to the Backlog and prioritized
appropriately.

## Pull requests

Pull requests allow us to propose changes to our code.

### When creating a pull request:

- We can omit the originator ticket number from the subject line since the link will activate in the pull request description.
- It's also a nice convention to make the subject line describe what you're
  fixing. For example, "Fix overview link color". We think of it like a commit
  message, because ultimately it becomes one when we squash it.
- We include "Closes #3771" or "Fixes #3771" in the pull request description,
  where "3771" is the originator ticket. This will close the originator ticket
  when the pull request is closed.
- Pull requests that are not complete are unassigned and generally have "[WIP]"
  (short for work in progress) in the title and/or utilize [GitHub's to do list functionality](http://lifehacker.com/why-a-github-gist-is-my-favorite-to-do-list-1493063613).
- When pull requests are ready, they should be assigned to someone.
  - Generally speaking, any [pull request created by you](https://github.com/pulls?user%3Astratasan) that's not a work in progress should be assigned to someone for review.
  - GitHub makes it easy to see [all pull requests currently assigned to you](https://github.com/pulls/assigned/?user%3Astratasan) or [pending your review](https://github.com/pulls/review-requested?user=stratasan).
  - We want to assign the pull request to the person who is best qualified to
    verify and test (like front end vs back end).
  - We assign a pull request to someone (vs. tagging, Slacking, etc) because
    it makes it more obvious who is owning that work.
  - We pick just one person to assign the pull request to, which helps ensure
    that someone reviews it.
  - If the person we assigned to doesn’t have the time, they can ask another
    person to take a look. Having a single assignee ensures that someone is
    responsible for shepherding it through the pipeline, even if that means
    kicking it to someone else.
  - Assignment does not necessarily mean the assignee must review it, but
    rather the assignee should determine who is best qualified to review the
    pull request and merge it.
- During each pull request review, we do a code review. ThoughtBot has a great
  description of [what a code review should consist of](https://github.com/thoughtbot/guides/tree/master/code-review).
- When the pull request passes tests and says it can be merged, we generally try
  to have at least another set of eyes on it before merging. We can deploy to
  staging and verify the fix there. For now, whoever is doing the review / test,
  does the deploying to staging, but eventually all developers will be able to.

### More thoughts on the assignment of pull requests:

1. Ideally, at all times pull requests have a single person assigned to them. This is to signal
   who is necessary to finish this pull request.
1. This means that if you are currently working on a pull request, you should assign yourself.
1. If you feel the pull request is ready for other eyes, assign that person to the pull request. Consider
   this a means of "pushing" the work to them, rather than requiring to "pull" it from
   you.
1. If, during the course of a code review, the reviewer feels there are necessary changes
   required before merging, those comments should be delivered in either the form of an
   official GitHub review or comments on particular lines in the "Files Changed" tab.
   Doing one or both of these provides a meaningful artifact and provides status (e.g.
   "Oh this pull request has been reviewed with 'Changes Requested'"). When this is done, the reviewer
   should re-assign the pull request to the developer who created the pull request, again pushing to the
   work back to them.
1. Following the above guidelines means that at any given time, a developer can look at
   the pull request list page and look for their icon to discover where they are needed.
   This is better and more asynchronous than having to ask in Slack "does anybody need
   anything from me?". It also makes minimizing the number of places our GitHub icon
   appears our ongoing work.

## Issues vs pull requests

Obviously, issues and pull requests are different things but it's important to know what
we expect when documenting both. Issues describe new or desired behavior from a
**product** perspective. By closing an issue via a pull request, we have improved the value of the
software we build for the business either by adding a feature, fixing a bug or improving
the maintainability of the application. Issues bodies are not required to specify the
particular code in question, though e.g. it may be helpful while discovering the root
cause of a bug to document where the errant behavior was found to begin.

Pull requests are the developer's attempt to address an Issue and hence take a different
perspective. They should be written for other developers with the express intent to communicate
**why these particular changes were made**. During the course of any particular issue, there
will be many ways to address the Issue and it's our job to make the most-correct decision
for the business. This involves balancing these attributes (mostly in this order):

- Read- and maintainability of the changes. Can other developers understand what's going on? Difficult and/or subtle changes likely require _more_ explanation.
- Does it sufficiently address the issue and how have you demonstrated that? Have you communicated edge cases with stakeholders? Do you understand the edge cases?
- Have you appropriately balanced the value of the pull request with the cost of it? As an extreme example, a one-line template change does not require introducing a new template engine.
- Does it make sense from the perspective of the codebase? If existing functionality exists elsewhere in the codebase, do you know about it, followed those patterns and/or built an abstraction to cover both? If you didn't build an abstraction layer, why not? Hint, it's not always useful to build abstractions.

As we write and submit pull requests, keep the above in the back of your mind. After all, it is
not our job to write code but rather solve business problems.