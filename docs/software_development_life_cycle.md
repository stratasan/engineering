# Stratasan's Software Development Life Cycle (SDLC)

- [SEE ALSO THIS DOCUMENT FROM CODY](https://drive.google.com/file/d/1ckOZZ-EpEOeMMukyWgKUdb3NuUBpDx34/view?usp=sharing)

## Purpose of the SDLC

We've written down our process of developing software for the purpose of:

- *Document what we _do_*: this document should be an accurate reflection of how we plan, build, and release secure, stable software.
- *Ensure a security-first development environment*: By writing our processes down, we set expectations for how we ensure the security of our clients' data.

For more information on what an SDLC is and why it should feature "security first", see "[Mitigating the Risk of Software Vulnerabilities by Adopting a Secure Software Development Framework (SSDF)"](https://nvlpubs.nist.gov/nistpubs/CSWP/NIST.CSWP.04232020.pdf) from NIST.

## Stratasan Development Methodology

Stratasan loosely follows the [Kanban](https://www.atlassian.com/agile/kanban) framework to manage communicating requirements, prioritizing work, limiting work in process, and quality assurance. We use [ZenHub](https://www.zenhub.com/) and [GitHub](https://github.com) as a platform to:

- Accurately describe business requirements
- Discuss and agree on architectural design
- Review proposed changes to code
- Track changes over time and retain release integrity
- Create clear visibility into feature or product completion

ZenHub Kanban boards are used to indicate feature request details and status. Features are grouped into lanes to indicate status.

- *Product Backlog* indicates features that have are still in the process of technical refinement and feature specification.
- *Sprint Backlog* is for work that is included in the next sprint.
- *In Progress* includes work that is currently under development.
- *Review/QA* indicates the feature is currently pending code review.
- *Closed* indicates completed work.

## Security Habits

### Training

### Peer Review

- Review and/or Analyze Human-Readable Code to Identify Vulnerabilities and Verify Compliance with Security Requirements (PW.7):

### Segregation of Environments

Development should be performed in a environment that is segragated from our production environment.

### Automated Testing

- How we verify software release integrity

### Deployment

- How we protect code from unauthorized access and tampering

### Penetration Testing

### Coding Standards

### Vulnerability Management

- Each of our production web applications should have a security policy ([example from the Analytics Platform](https://github.com/stratasan/health/security/policy)).
- 
- Verify Third-Party Software Complies with Security Requirements (PW.3
- Identify and Confirm Vulnerabilities on an Ongoing Basis (RV.1)
- Assess, Prioritize, and Remediate Vulnerabilities (RV.2)

### Role-based Access to Infrastructure

## Architecture and design
## Test planning
## Coding
## Testing and results
## Release and maintenance

