# Supporting Our Systems

Our Slack channel `#support` embodies our team values “We’ll Figure it Out” and “Our Success is My Success”. We have documentation to help us use `#support` so we can continue to solve any issues together as a team and making sure things get triaged to the right person.

## When to post to #support?

When support is needed from another team member, first try to find the right channel to post your question or problem in. For example, if something is an data question, the data channel would be best. If there is no more creamer, post in the `#coffee` channel. If you’d like to know about a feature release or a new product, `@prod` (which notifies members of the product team) or `#product` (the product channel) works well for reaching the product team. When unsure of who is best to answer the question, `#support` is the place to go.

We make sure to thread questions and information around the issue in the channel so the conversation can live in one place. This way the engineering team can review the conversation and easily link to it. It will also help de-clutter the channel if more than one issue happens at the same time.

Here are some helpful guidelines we follow around posting in the `#support` channel:

## Who to @tag so someone sees the message?

### No tag

Non-emergencies or general questions, post a message in `#support` without tagging anyone and someone will respond and find the appropriate subject matter expert to answer. Curiosities and oddities welcome.

_Use cases_

- Where can I find information about XYZ in our app?
- Things that look weird in the app, suspected bugs that don’t require immediate action

### `@oncall`

Urgent matter that needs an answer or solution ASAP due to a client request or user issue. Whoever is in `@oncall` will find the information for you and triage your request. Timebound questions welcome.

_Use cases_

- A user is seeing data in a report that looks incorrect and doesn’t tie out to a query using the same data
- Suspected bugs that inhibit either a team member or the user from accomplishing the intended goal

  _While on on-call, we do our best to_

- Respond to questions in `#support` tagged with `@oncall`
- Gather specifics data points (URL, expected behavior vs. actual behavior, etc)
- Understand what success looks like from Customer Success' angle. They're not always asking for new work, just an explanation as to the behavior.
- When digging into an issue, provide timely updates and when Customer Success can expect an update. If 30 minutes is needed to understand the issue, say so _and follow-through_.
- It is okay to not understand a particular issue and say so but in this case work to bring in a colleague who can help. The information gathered in triaging the issue will help whomever is brought in.
- Tag threads with appropriate emoji (see tag assignments below)

### `@dev911`:

An emergency that needs a developer to stop what they’re working on to focus on a fix for a member of Customer Success or a user

_Use cases_

- App is down
- A confirmed bug is affecting application functionality that prevents people from doing their jobs (wrong data, bad links, etc). Tip: URLs and steps to reproduce the bug will be necessary.

  _Don’t use for_

- “Can you help me understand these numbers/report/etc?”
- “Why does it work this way?”

## How to know who’s looking into the question?

Support team members can indicate they are looking into a question by replying in a thread or reacting with an eyes emoji (👀).

## What do the emojis below support messages mean?

Emoji tags are mostly done by developers, who review support questions/issues each week to learn from them.

### Emoji tag meanings

- :necktie: (👔) - Indicates a product-related question.
- :fire_engine: (🚒) - Indicates a support question that requires developers to respond
- :vhs: (📼) - Indicates a data-related question.
- :robot_face: - A data question that a developer answered.
- :coffin: (⚰️) - Post-mortem, something went horribly wrong and the app is unusable.
- :evergreen_tree: (🌲) - Documentation that should be interesting for new folks.
- :bug: (🐛) - An actual code-related issue has been found!
- :documentation: - Indicates a question for which end-user or internal documentation should be written.
