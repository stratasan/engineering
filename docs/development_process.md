# Development Process

This is a living document. We often evaluate our processes and are open to experimentation in the interest of always improving.

## Approach

We deploy with continuous delivery. We plan work in sprints. We feel that when a bit of work is ready to go, it shouldn't be held back due to a timeline.

We communicate what work has been done through the Product team putting together release notes every week and talking about what features have been added over the course of the week. If it is a big feature and people want to use it right away, we will let the company know outside of the product release notes when it is live.

While we deploy early and often, that does not mean we like to provide a buggy or unstable experience for users. We liberally use [feature flags](https://en.wikipedia.org/wiki/Feature_toggle) to separate the concerns of deploying code from releasing it to users. As we test and gather feedback about new functionality in production, we communicate with the Product team about the state of work-in-progress. In a perfect world, the release of a product or feature globally across our applications is a non-event for the development team.

## Our Process

1. Refinement: We get clarity on issues in the backlog and estimate points of effort for each issue. We map out code changes and think about the scope of the change during refinement as well. Issues must have a non-technical explanation as well.
1. Planning: During sprint planning developers and product team members bring issues from the backlog into the current sprint based on capacity.
1. Review: Where developers demo new changes to stakeholders. Product will build release notes from these demos. We review merged PRs from the previously completed sprint. We adjust capacity and points if necessary for the following sprint.
1. Retro: We reflect on what went well and what we could improve based on the previously completed sprint. We then create action items to make our work easier in future sprints.

## Delivery expectations

We aim to make expectations clear, but if ever they are not and some work might take longer because of that, we don't play the blame game - we adjust expectations for those waiting on the release of that work; we learn from it and aim to improve the process for next time.

## Git

Good commit messages [matter](http://chris.beams.io/posts/git-commit).

## Jira

We use [Jira](http://jira.atlassian.net) for managing ticket priority. This allows us to visualize and prioritize our work using scrum. It also allows us to add estimates to work in the form of story points.

## Jira issues

Issues are the primary unit of work for our development team. They provide a wealth of information about the work to be done, why we do it, and what it takes for the work to be accepted.

## Estimation

We apply Jira story point estimations based on effort/difficulty/complexity. We use a Fibonacci Scale for assigning estimations. These numbers are 1, 2, 3, 5, 8, and 13.

## Changes to estimates

- During the initial estimate, if we uncover new things that _significantly_ expand the scope of the original issue, we will split it into multiple issues (maybe convert the original issue to an epic) and those new issues get estimates.
- If an issue has already been estimated and work has begun on it, we generally do not modify the issue unless it becomes apparent that the work will be considerably more complex (going from a 1 to a 3, for example). If this occurs, communication with the product manager is required.

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

## What makes an issue ready for the development backlog?

Our product team will often create issues to define new features. For these to be considered development-ready, the following requirements are considered our "Definition of Ready" and should be met:

- The "why" must be clear.
- Any relevant designs should be completed.
- [Acceptance criteria](https://nomad8.com/acceptance_criteria) must be provided.
- The work must have an estimate of effort/story point.
  - Exceptions to this guidance might be bugs or research projects, although this work should also generally be time-boxed.

Issues that are considered "Ready" can be moved to the backlog and prioritized appropriately.

The definition of ready can be different depending on the product team.

## Pull requests

Pull requests allow us to propose changes to our code.

### When creating a pull request

- It's also a nice convention to make the subject line describe what you're fixing. For example, "Fix overview link color". We think of it like a commit message, because ultimately it becomes one when we squash it. It's also a nice convention to start the subject line with a verb (e.g. Fixes, Implements, Resolves, Removes, etc.)
- We include the Jira ticket ID in brackets in the pull request description, which will be auto-linked to Jira via our GitHub integration. Example: `[AP-123]`
- Branches for issues should start with the Jira issue ID as well, as this links the branch to the Issue and puts the issue into "In Progress".
  Example: `git checkout -b AP-123-fix-bug`
- Pull request bodies should include screenshots if viable and a description of changes.
- Pull requests that are not complete are made as draft pull requests in GitHub.
- When pull requests are ready, at least one reviewer should be requested.
  - Generally speaking, any [pull request created by you](https://github.com/pulls?user%3Astratasan) should be assigned to you.
  - GitHub makes it easy to see [all pull requests currently assigned to you](https://github.com/pulls/assigned/?user%3Astratasan) or [pending your review](https://github.com/pulls/review-requested?user=stratasan).
  - We want to request a review of the pull request by the person who is best qualified to
    verify and test (like front end vs back end).
  - We assign someone as a reviewer for a pull request (vs. tagging, Slacking, etc) because
    it makes it more obvious who is owning that work.
- During each pull request review, we do a code review. ThoughtBot has a great description of [what a code review should consist of](https://github.com/thoughtbot/guides/tree/master/code-review).
- If, during the course of a code review, the reviewer feels there are necessary changes required before merging, those comments should be delivered in either the form of an official GitHub review or comments on particular lines in the "Files Changed" tab. Doing one or both of these provides a meaningful artifact and provides status (e.g. "Oh this pull request has been reviewed with 'Changes Requested'").
- A pull request must be reviewed before it is merged. Pull requests merged to our main branch are immediately deployed to production.

## Issues vs pull requests

Obviously, issues and pull requests are different things, but it's important to know what
we expect when documenting both. Issues describe new or desired behavior from a
**product** perspective. By closing an issue via a pull request, we have improved the value of the
software we build for the business either by adding a feature, fixing a bug or improving
the maintainability of the application. Issues bodies are not required to specify the
particular code in question, though it may be helpful while discovering the root
cause of a bug to document where the errant behavior was found to begin.

Pull requests are the developer's attempt to address an issue and hence take a different
perspective. They should be written for other developers with the express intent to communicate
**why these particular changes were made**. During the course of any particular issue, there
will be many ways to address the issue, and it's our job to make the most-correct decision
for the business. This involves balancing these attributes (mostly in this order):

- Readability and maintainability of the changes. Can other developers understand what's going on? Difficult and/or subtle changes likely require _more_ explanation.
- Does it sufficiently address the issue and how have you demonstrated that? Have you communicated edge cases with stakeholders? Do you understand the edge cases?

As we write and submit pull requests, keep the above in mind. After all, it is not our job to write code but rather solve business problems.
