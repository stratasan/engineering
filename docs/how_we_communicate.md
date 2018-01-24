# How We Communicate

## Slack
Most of our communication is over Slack. Given that we are a distributed team,
we work to communicate availability in a manner considerate to our teammates.

We also work to make sure that important decisions are well-documented. Chat is,
generally speaking, more ephemeral so most important developer conversations
should occur via email or GitHub comments.

### Slack Considerations

- We default Slack's do not disturb settings to be outside of work hours.
  Generally, if the need is urgent, we communicate via text messages.
- If we are going to be [away from keyboard
  (AFK)](http://www.internetslang.com/AFK-meaning-definition.asp) for more than
  10-15 minutes, we let others know by communicating how long we expect to be
  gone and how to reach us in an emergency.

## Git and GitHub

- Good commit messages [matter](http://chris.beams.io/posts/git-commit/).
- We use [ZenHub](http://zenhub.io) for managing ticket priority.
- We measure GitHub ticket estimations based on effort/difficulty/complexity,
  more so than based on time to complete the ticket. We use this scale for
  assigning GitHub ticket estimations:

Points  | Estimate
------- | --------------------
0.5     | Less than half a day
1       | A day or so
3       | About half a week
5       | About a week
8       | Around two weeks
13      | Probably should be broken up into multiple issues

- More thoughts on scoping:
    1. We generally want to estimate an issue before putting it into the backlog.
    1. During the initial estimate, if we uncover new things that _significantly_ expand the scope of the original issue, we will split it into multiple issues (maybe convert the original issue to an epic) and those new issues get estimates.
    1. If an issue has already been estimated and work has begun on it, we generally do not modify the issue unless it becomes apparent that the work will be considerably more complex (going from a 0.5 to a 3, for example).
- GitHub comments within a ticket or pull request (often called PR) should 
  tag/mention anyone whose response is required. Then that person is notified
  and subscribed to future updates. To do this, enter `@` and start typing their
  GitHub username. [Here are more instructions](https://github.com/blog/821-mention-somebody-they-re-notified).
- When creating a pull request:
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
- More thoughts on the assignment of Pull Requests:
  - Ideally, at all times PRs have a single person assigned to them. This is to signal
    who is necessary to finish this PR.
  - This means that if you are currently working on a PR, you should assign yourself.
  - If you feel the PR is ready for other eyes, assign that person to the PR. Consider
    this a means of "pushing" the work to them, rather than requiring to "pull" it from
    you.
  - If, during the course of a code review, the reviewer feels there are necessary changes
    required before merging, those comments should be delivered in either the form of an
    official GitHub review or comments on particular lines in the "Files Changed" tab.
    Doing one or both of these provides a meaningful artifact and provides status (e.g.
    "Oh this PR has been reviewed with 'Changes Requested'"). When this is done, the reviewer
    should re-assign the PR to the developer who created the PR, again pushing to the
    work back to them.
  - Following the above guidelines means that at any given time, a developer can look at
    the Pull Request list page and look for their icon to discover where they are needed.
    This is better and more asynchronous than having to ask in Slack "does anybody need
    anything from me?". It also makes minimizing the number of places our GitHub icon
    appears our ongoing work.

## Meetings

We document any decisions that are made and actions that are required so that we
can share them with non-attendees.

## Work Hours

Our company's official business hours are from 8am-5pm. However, in order to
reduce the amount of time in traffic, some of our team shifts those hours around
(for example, 7am-4pm or even 9am-6pm). Team members should communicate their
availability with the rest of the company in order to alleviate any concerns
about scheduling.

## Working Remote
- The development team typically works remote once a week on Thursdays.
- Working remotely at other times is allowed with approval from your manager.
- On remote work days, we generally send a greeting and parting message in
  Slack. Emoji messages with a hand waving or sunrise also work. This is the
  equivalent of walking into the office in the morning - it helps us know when
  our teammates are online. We also let each other know when we're going to be
  away for lunch. See "away from keyboard" note above.
- When working remote, it is your responsibility to make sure that your meetings
  for the day do not require you to be physically present for them. If they do,
  you should not work remotely that day.
- When working remote, it is your responsibility to request call-in numbers
  and/or video conferencing links for meetings in advance whenever possible.
