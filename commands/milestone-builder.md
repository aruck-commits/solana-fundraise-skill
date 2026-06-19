# /milestone-builder

Build a clean, reviewer-approved milestone plan for your grant application.

## What this command does

Takes your project description and outputs a complete milestone table — properly structured, verifiable, and timed — ready to paste into any grant application.

---

## How to run it

Type `/milestone-builder` in Claude Code. The agent will ask you a series of questions and output a complete milestone plan.

---

## The questions

**1. What are you building?**
One sentence. What does it do and who is it for?

**2. What stage are you at?**
- Idea only (nothing built yet)
- Prototype (something working, not production)
- Live product (on mainnet or testnet with users)

**3. How long is your grant period?**
Most grants run 8–20 weeks. What's your target?

**4. What's the single most important thing you need to ship?**
The core deliverable. Everything else supports this.

**5. What does "done" look like?**
How would a stranger verify you succeeded? A live URL? GitHub repo? Number of users? Audit report?

**6. What are the 2-3 steps to get there?**
Don't overthink it. What needs to happen in order?

---

## Output format

```
Milestone Plan — [Project Name]
Grant period: [X] weeks | Total budget: $[X]

| # | Milestone | Deliverable (verifiable) | Timeline | Amount |
|---|---|---|---|---|
| M1 | [Name] | [What a stranger can check] | Week X | $X |
| M2 | [Name] | [What a stranger can check] | Week X | $X |
| M3 | [Name] | [What a stranger can check] | Week X | $X |

Notes:
- M1 is intentionally early (week X) to show momentum and trigger first payment
- Final milestone is [live/verifiable thing] — not "complete development"
- Each deliverable links to a GitHub commit, live URL, or published doc
```

---

## Milestone rules the agent enforces

- First milestone must be within 4 weeks — no exceptions
- Every deliverable must be verifiable by someone who doesn't know you
- Final milestone must be something live — not internal
- No milestone called "complete development" or "finalize product"
- Budget split should reflect milestone difficulty, not be equal thirds by default
- No single milestone longer than 6 weeks
