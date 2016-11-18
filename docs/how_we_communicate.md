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
    - 0.5 = a few minutes
    - 1 = half a day
    - 2 = two days
    - 3 = half a week
    - 5 = a week
    - 8 = around two weeks
- GitHub comments within a ticket or pull request (often called PR) should 
  tag/mention anyone whose response is required. Then that person is notified
  and subscribed to future updates. To do this, enter `@` and start typing their
  GitHub username. [Here are more instructions](https://github.com/blog/821-mention-somebody-they-re-notified).
- Some considerations for pull requests
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
<!-- - We define a pull request as ready when... -->
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

## Meetings

We document any decisions that are made and actions that are required so that we
can share them with non-attendees.

## Work Hours

Our company's official business hours are from 8am-5pm. However, in order to
reduce the amount of time in traffic, some of our team shifts those hours around
(for example, 7am-4pm or even 9am-6pm). Team members should communicate their
availability with the rest of the company in order to alleviate any concerns
about scheduling.