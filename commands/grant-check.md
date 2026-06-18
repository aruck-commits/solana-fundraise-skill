# /grant-check

Run a full readiness check before submitting a grant application.

## What this command does

Walks the founder through a structured assessment of their project and application, then outputs:
1. Which grant program(s) they're ready for right now
2. Which ones they're not ready for and why
3. The 3 most critical things to fix before submitting

---

## How to run it

Type `/grant-check` in Claude Code. The agent will ask you a series of questions — answer honestly. The output is only as useful as the input.

---

## The questions

The agent asks these in order. Don't skip any.

### Stage
- What are you building? (one sentence)
- What stage are you at — idea only, prototype, or live product?
- If prototype or live: what's the GitHub link or live URL?

### Problem
- Who specifically has this problem?
- How many people/projects face it today? (give a number, even a rough one)
- What do they currently do instead?

### Team
- Who's on the team and what have they shipped before?
- Do you have a GitHub profile with Solana contributions?
- Do you have a Superteam Earn profile with bounty history?

### Milestones
- What would you deliver in the first 4 weeks if funded?
- How would someone verify you delivered it?
- What does the project look like in 3 months?

### Grant target
- Which program are you thinking of applying to?
- Have you applied to any grants before? What happened?

---

## Scoring output

After the questions, the agent outputs a readiness score for each program:

**Solana Foundation**
- ✅ Ready / ⚠️ Almost / ❌ Not yet
- Reason + what to fix

**Superteam Grants**
- ✅ Ready / ⚠️ Almost / ❌ Not yet
- Reason + what to fix

**Colosseum**
- ✅ Ready / ⚠️ Almost / ❌ Not yet
- Reason + what to fix

Then: **Top 3 things to fix before you submit** — specific, actionable, prioritised.

---

## Example output

```
Grant Readiness Check — Results

Solana Foundation: ⚠️ Almost
Your idea is strong and the problem is specific. Main issue: no GitHub history 
on Solana. Reviewers will look for this. Fix: push your current prototype to 
a public repo before applying.

Superteam Grants: ✅ Ready
You're in India, active on Superteam Earn, and have a working prototype. 
Apply here first. Your regional angle (Mumbai dev community) is strong.

Colosseum: ❌ Not yet
You need a working demo to enter a Colosseum hackathon. Come back once 
M1 is done.

Top 3 things to fix:
1. Push your code to a public GitHub repo — this is blocking Foundation
2. Rewrite your problem section — "developers struggle with X" needs a number
3. Break M1 into something deliverable in week 3, not month 2
```
