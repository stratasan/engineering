# Supporting Our Systems

Our Slack channel `#support` embodies our team values “We’ll Figure it Out” and “Our Success is My Success”. We have documentation to help us use `#support` so we can continue to solve any issues together as a team and making sure things get triaged to the right person.

## When do I post to #support?

Any data, technology, or application related question or issue that is urgent or could not be solved in other appropriate channels. In an effort to not overwhelm the #support channel, the following process for posting questions before triaging to #support should be followed.
To minimize developer time and bandwidth on support issues, the Support Team will utilize the #Strategicdelivery private channel to field support questions. The @SOS user group is a group that the Support Team can use to make sure issues are seen immediately by the right people when needed. Remember to thread your questions and information around your issue so the conversation can be searched and tracked.
If the question is not able to be answered in #Strategicdelivery or is not answered within a 20 minute period, it is acceptable to post in #support.

## Who to @tag so someone sees the message?

### No tag

Non-emergencies or general questions, post a message in `#support` without tagging anyone and someone will respond and find the appropriate subject matter expert to answer. Curiosities and oddities welcome.

_Use cases_

- Where can I find information about XYZ in our app?
- Things that look weird in the app, suspected bugs that don’t require immediate action

### `@oncall`

Urgent matter that needs an answer or solution ASAP due to a client request or user issue. Whoever is in `@oncall` will find the information for you and triage your request. Timebound questions welcome.
`@oncall` contains the Product team, who will handle triage.

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

- Only use IF the system is down, users are fully unable to proceed (no work around), all users are affected, immediate emergency resolution is needed
- App is down
- A confirmed bug is affecting application functionality that prevents people from doing their jobs (wrong data, bad links, etc).
- Tip: URLs and steps to reproduce the bug will be necessary.

  _Don’t use for_

- “Can you help me understand these numbers/report/etc?”
- “Why does it work this way?”

## How to know who’s looking into the question?

Support team members can indicate they are looking into a question by replying in a thread or reacting with an eyes emoji (👀).

## What happens to issues that require further work

When a question requires a code change within an application or further research to be done to better understand the problem, a ticket should be created for tracking the issue. Once a ticket is created, all correspondence should be continued within the project management system (not in slack).

If the issue is determined to be a bug:

### Determine level of criticality:

1. High/Critical (system down, unable to proceed, urgent, all users affected, immediate resolution needed)
2. Medium (quick resolution needed, difficult/unable to proceed but not an urgent matter, client reported)
3. Low (resolution eventually needed, internally identified, uncommon issue)
4. Minor (no users affected, UX/UI issues, annoyance, typos)

Bugs identified as 1 are NOT managed by Product. They are sent to engineering for immediate fix/report status for resolution. For bugs identified as 1, tag @dev911 for application. The technical team will be responsible for creating an issue in Jira.

The work must be tracked in Jira and will be worked as the most important thing in the current sprint. Communication with Product about priority shift is required.

Bugs identified as 2 - 4 are put in the normal workflow and will need to be prioritized by the Product Manager. This wrike bug form will be filled out by the reporter.used.

Requests that are non-bugs, but are more general or functionality questions, are answered by the support team if possible. If no answer is found, the question is routed to the appropriate internal team to answer (Strategic Delivery, CS, etc).
If additional assistance is needed, an intake request form should be completed by the reporter for Product review and prioritization.

## What do the emojis below support messages mean?

Emoji tags are mostly done by developers, who review support questions/issues each week to learn from them.

### Emoji tag meanings

- :necktie: (👔) - Indicates a product-related question.
- :fire_engine: (🚒) - Indicates a support question that requires developers to respond
- :vhs: (📼) - Indicates a data-related question.
- :coffin: (⚰️) - Post-mortem, something went horribly wrong and the app is unusable.
- :evergreen_tree: (🌲) - Documentation that should be interesting for new folks.
- :bug: (🐛) - An actual code-related issue has been found!
- :documentation: - Indicates a question for which end-user or internal documentation should be written.
- :read_the_manual: Documentation that would have answered the question already exists
- :heavy_check_mark: ✅ Indicates that the issue has been resolved.
