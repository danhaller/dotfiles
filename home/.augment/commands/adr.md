---
description: Create an ADR for a given decision.
argument-hint: [decision-subject]
model: claude-opus-4.5
---

## Instructions

1. Create an ADR for the provided: $ARGUMENTS$.
2. Unless otherwise specified, create the ADR in the docs/adr directory.
3. The file name should be docs/adr/nnn-description-of-decision-subject.md where nnn is the next available number.
4. Complete the ADR template specified below. If any details are unknown or need to be discovered, ask for clarification.
5. Update any previous ADR's that are affected by this decision to add a "Superseded-By" section linking to this new ADR.
6. Commit the changes with a message like "docs(adr): add ADR for decision subject"

## Output Format of ADR:

```
# Title

## Status

What is the status, such as proposed, accepted, rejected, deprecated, superseded, etc.?

## Context

What is the issue that we're seeing that is motivating this decision or change?

## Decision

What is the change that we're proposing and/or doing?

## Consequences

What becomes easier or more difficult to do because of this change?
```