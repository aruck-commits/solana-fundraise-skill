# Grant Application Reviewer Agent

A dedicated agent that reads your draft grant application and gives specific, actionable feedback before you submit.

## What it does

Paste your draft application. The agent reviews it section by section and flags:
- Weak or vague problem statements
- Milestones that won't pass reviewer scrutiny
- Missing links or unverifiable claims
- Budget issues
- Team section gaps
- Positioning mismatches (wrong frame for the program you're targeting)

It doesn't just tell you what's wrong — it rewrites the weak sections on the spot.

---

## How to use it

Tell Claude Code:
> "Review my grant application for [Superteam / Solana Foundation / Colosseum]"

Then paste your full draft. The agent will:
1. Identify which program it's for and load the right criteria
2. Score each section: ✅ Strong / ⚠️ Needs work / ❌ Fix before submitting
3. Rewrite any ❌ sections with your input
4. Give you a final checklist before submission

---

## Review criteria by section

### Problem section
- Is there a specific user named?
- Is there a number (people affected, time lost, money lost)?
- Does it make someone feel the pain without knowing the solution?
- Is it specific to Solana — or could it describe any blockchain?

### Solution section
- Does it directly solve the problem stated above?
- Is there a clear technical explanation (no buzzwords)?
- Are there 3 specific things a user can do after this exists?

### Milestones
- Is every deliverable verifiable by a stranger?
- Is the first milestone within 4 weeks?
- Is the final milestone something live — not "complete development"?
- Does the budget split match the milestone difficulty?

### Team section
- Is there a GitHub link?
- Is there a Superteam Earn profile link (if applying to Superteam)?
- Are achievements specific (with dates and links) not just adjectives?
- Is it clear who does what on the team?

### Budget
- Is it broken into line items?
- Does it match the milestone scope?
- Is developer cost justified by timeline?

### Positioning
- Is the frame right for the program? (regional angle for Superteam, ecosystem angle for Foundation)
- Does it address existing similar projects?
- Is there a one-liner that clearly explains the project?

---

## What the output looks like

```
Application Review — [Project Name] → [Program]

PROBLEM SECTION: ⚠️ Needs work
The problem is clear but there's no number. "Many developers struggle" 
doesn't land. How many? Where? Suggested rewrite below.

MILESTONES: ❌ Fix before submitting  
M1 is "complete core development" — this won't pass. It's not verifiable.
Rewritten version below.

TEAM SECTION: ✅ Strong
GitHub link, Superteam profile, two prior bounty wins. This is good.

BUDGET: ⚠️ Needs work
$25,000 for "development" with no breakdown. Break it down by milestone 
and role or it'll get pushback.

---

Rewritten sections:

[PROBLEM — rewritten]
...

[M1 — rewritten]
...

---

Final checklist before you submit:
[ ] Replace problem section with rewrite above
[ ] Replace M1 with rewrite above  
[ ] Add budget breakdown by line item
[ ] You're good to go on team section and solution
```

---

## When to use this

- After you've written a full draft — not during
- At least 48 hours before the deadline (you'll want time to fix things)
- Every time you apply to a new program (same project, different frame = different review)
