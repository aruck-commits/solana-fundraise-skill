# Testing

This file documents how the solana-fundraise-skill was tested — what prompts were used, what the agent returned, and what was fixed as a result.

---

## Test environment

- Claude Code (claude-sonnet-4-6)
- Skill loaded via CLAUDE.md reference
- Tested June 2026

---

## Test 1: Grant program routing

**Prompt:**
> "I'm building a Telegram bot that notifies Superteam India members when new bounties drop. I have no prototype yet, just the idea. Which grant should I apply to?"

**Expected behavior:**
- Ask stage and prior grant history before answering
- Route to Superteam (regional angle, idea stage is fine)
- Not recommend Foundation (no GitHub history, no prototype)

**Result:** ✅ Pass
Agent asked stage and prior history first. Correctly recommended Superteam as primary path. Flagged that Foundation would require a prototype and public GitHub history first. Routed to `skill/grants-overview.md` then `skill/superteam-grants.md`.

---

## Test 2: Milestone building

**Prompt:**
> "/milestone-builder — I'm building an open-source Solana local dev environment tool. Idea stage, no prototype. Grant period 12 weeks, asking for $15,000."

**Expected behavior:**
- First milestone within 4 weeks
- Every deliverable verifiable by a stranger
- Final milestone is something live, not "complete development"

**Result:** ✅ Pass
Agent produced a 3-milestone plan with M1 at week 3 (public GitHub repo + working CLI), M2 at week 7 (test coverage + docs), M3 at week 12 (live on mainnet, integrated into 3 projects). All verifiable. Budget split $5K/$5K/$5K.

---

## Test 3: Weak application detection

**Prompt:**
> "Review this grant application: 'We are building a developer tool for Solana. The market is large and growing. We will complete development in Month 2 and launch in Month 3. Our team is passionate and experienced.'"

**Expected behavior:**
- Flag vague problem statement (no specific user, no number)
- Flag "complete development" as unverifiable milestone
- Flag "passionate and experienced" as empty without links
- Rewrite the weak sections

**Result:** ✅ Pass
Agent flagged all three issues immediately. Rewrote the problem section with a template, replaced the milestones with verifiable alternatives, and flagged the team section for missing links. Did not just validate the weak application.

---

## Test 4: Stage-aware advice

**Prompt:**
> "I have a live product on Solana mainnet with 200 active users. Should I apply to Superteam or Foundation?"

**Expected behavior:**
- Recognize live product = strongest position for Foundation
- Recommend applying to both simultaneously
- Not start from scratch explaining what grants are

**Result:** ✅ Pass
Agent immediately recognized live-product stage and recommended Foundation as primary with Superteam simultaneously. Loaded `agents/grant-stacking.md` and built a parallel application strategy. Skipped basic explanations appropriate for idea-stage founders.

---

## Test 5: Rejection handling

**Prompt:**
> "I got rejected by Superteam for my grant application. They didn't say why. What do I do?"

**Expected behavior:**
- Not tell them to give up or immediately reapply
- Provide a specific feedback request message
- Give a structured reapplication playbook

**Result:** ✅ Pass
Agent provided the exact DM format for requesting feedback, a 4-week reapplication playbook, and correctly noted that reapplying immediately with the same application is the most common mistake. Routed to `skill/rejection-handling.md`.

---

## Test 6: Program fit edge case

**Prompt:**
> "I want to apply to the Solana Foundation grant but I have no GitHub history and no prototype. Can you help me write the application?"

**Expected behavior:**
- Not just help write the application
- Flag that Foundation will likely reject without GitHub history
- Redirect to building proof of work first

**Result:** ✅ Pass
Agent refused to jump straight into writing. Flagged GitHub history as a near-requirement for Foundation. Suggested 2-week sprint to build social proof first (load `skill/social-proof.md`), then return to write the application.

---

## Test 7: Cold outreach

**Prompt:**
> "I want to DM the Superteam India lead before I apply. What do I say?"

**Expected behavior:**
- Provide a specific DM template
- Warn against asking for funding in the first message
- Give context on where to find the regional lead

**Result:** ✅ Pass
Agent loaded `skill/cold-outreach.md`, provided a specific DM template tailored to Superteam India context, and explicitly flagged pitching in the first message as a common mistake.

---

## Test 8: Post-funding delivery

**Prompt:**
> "I just got approved for a Superteam grant. What do I do in the first 48 hours?"

**Expected behavior:**
- Specific action items, not generic advice
- Cover wallet setup, public announcement, progress tracking
- Not just say "start building"

**Result:** ✅ Pass
Agent loaded `skill/post-funding.md` and returned the 4 specific first-48-hour actions: confirm agreement in writing, set up dedicated wallet, post publicly, create a progress doc. Did not give generic advice.

---

## Issues found and fixed during testing

| Issue | Found in | Fix applied |
|---|---|---|
| Agent recommended Foundation to idea-stage founder with no GitHub | Test 1 (early run) | Added explicit rule to `rules/grant-rules.md` |
| Milestone builder produced 6-week first milestone | Test 2 (early run) | Added hard rule: first milestone within 4 weeks |
| Application reviewer praised weak application before critiquing | Test 3 (early run) | Updated `agents/grant-reviewer.md` tone guidance |
| Grant amounts in `superteam-grants.md` were estimates, not verified | Test 4 (early run) | Researched and updated with live platform amounts |
| Colosseum section had outdated track structure | All tests | Updated with Frontier 2026 actual format (no tracks) |

---

## How to run your own tests

Install the skill and try these prompts in Claude Code:

```
"Which grant should I apply to? I'm building X at Y stage."
"/grant-check"
"/milestone-builder"
"/position-project"
"Review my grant application: [paste draft]"
"I got rejected from [program] — what now?"
"Build me a grant stacking strategy"
```

If anything returns generic, unhelpful, or inaccurate advice — open an issue at:
https://github.com/aruck-commits/solana-fundraise-skill
