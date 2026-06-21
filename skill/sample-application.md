# Sample Grant Application

A complete, real-quality grant application for a fictional Solana project. Every section done right. Use this as a template — swap in your project details and follow the same structure and tone.

The fictional project: **SolProbe** — a local development diagnostic tool for Solana that automatically detects and explains common validator and program errors.

---

## Application 1: Superteam India Grant

**Program:** Superteam Earn — Regional Grant
**Applicant:** Aryan Mehta, Mumbai
**Amount requested:** $3,500 USDC
**Project:** SolProbe

---

### One-liner
SolProbe is a CLI tool that automatically diagnoses Solana local validator errors and explains them in plain English, so developers stop losing hours to cryptic logs.

---

### The problem

Every developer who sets up a Solana local environment hits the same wall: the validator crashes with an error that looks like this —

```
Error: failed to start validator: 
Os { code: 98, kind: AddrInUse, message: "Address already in use" }
```

There's no explanation. No suggested fix. You Google it, find a 2-year-old forum thread, try three things, maybe fix it. I've watched 8 developers in our Mumbai Solana community abandon their first project in the first week because of exactly this friction. Two of them were senior engineers who gave up on Solana specifically and went back to building on EVM.

This isn't a skill gap — it's a tooling gap. The errors are fixable. They just aren't explained anywhere that a new developer can find in under 10 minutes.

---

### What I'm building

SolProbe is a lightweight CLI tool that wraps `solana-test-validator` and intercepts error output in real time. When a known error pattern is detected, it:

1. Shows the original error (unchanged)
2. Explains what caused it in one sentence
3. Suggests the exact command to fix it
4. Links to the relevant Solana docs section

Example output:
```
[SolProbe] Error detected: Address already in use
→ Cause: A validator instance is already running on port 8899
→ Fix: Run `pkill -f solana-test-validator` then try again
→ Docs: docs.solana.com/cli/examples/test-validator
```

Current coverage: 24 known error patterns across validator startup, program deployment, and RPC connection failures. Adding 10+ more per week based on community submissions.

---

### Why me

I've been building on Solana for 14 months. I run Web3 Mumbai — 3,000+ members, monthly events, the largest Solana community in India. I've personally onboarded 40+ developers to Solana in the last year and watched the same errors kill momentum every single time.

- GitHub: github.com/aryan-mehta (12 Solana repos, 200+ commits in last 6 months)
- Superteam Earn: earn.superteam.fun/u/aryanmehta (4 bounties completed, 2 wins)
- Prior shipped: solana-wallet-checker (47 GitHub stars, used by 3 Mumbai hackathon teams)

---

### Milestones

| # | Milestone | Deliverable | Timeline | Amount |
|---|---|---|---|---|
| M1 | Public alpha | GitHub repo live, 24 error patterns, working install, demo GIF | Week 3 | $1,200 |
| M2 | Community error submissions | 40+ error patterns, contribution guide, 50 GitHub stars | Week 6 | $1,300 |
| M3 | Superteam India integration | Featured in Superteam India onboarding docs, 100 installs tracked | Week 10 | $1,000 |

---

### Budget

| Item | Amount |
|---|---|
| Development (10 weeks × $300/week part-time) | $3,000 |
| Documentation and demo video | $300 |
| Community outreach and Mumbai event demo | $200 |
| **Total** | **$3,500** |

---

### Why Superteam

India has the third-largest developer population in the world. Less than 1% build on Solana. The onboarding friction is one of the biggest reasons. SolProbe directly reduces that friction for Indian developers — and every error pattern added by our Mumbai community makes it better for the whole ecosystem.

---

---

## Application 2: Solana Foundation Grant

**Program:** Solana Foundation Grants
**Applicant:** Aryan Mehta
**Amount requested:** $18,000 USDC
**Project:** SolProbe (v2 — production grade)

*Note: This application was submitted after the Superteam grant was delivered. M1 and M2 from the Superteam grant are linked as proof of delivery.*

---

### Public goods case

Local development tooling is the highest-leverage investment the Foundation can make in developer onboarding. Every developer who touches Solana goes through local setup. Every developer who bounces off cryptic validator errors is a permanent loss to the ecosystem.

SolProbe is MIT licensed, maintained publicly, and designed to be the diagnostic layer that sits alongside `solana-test-validator` for every developer regardless of experience level. It benefits the whole ecosystem — not just one region, not just one type of builder.

---

### Problem

Solana's local development error output is cryptic, undocumented at the practical level, and has no built-in diagnostic layer. The official docs cover how to run the validator — not what to do when it fails.

In a survey of 47 developers across Superteam India, Vietnam, and Nigeria:
- 89% said they've spent more than 2 hours debugging a local validator error
- 61% said they've considered switching to a different chain because of setup friction
- 34% said they abandoned at least one project during local setup

This is a public goods problem. No individual developer will build a comprehensive diagnostic tool because there's no business model. But the whole ecosystem pays the cost every time a developer bounces.

---

### Solution

SolProbe v2 is a production-grade CLI diagnostic tool for Solana local development. It extends what was built during the Superteam grant (proof: github.com/aryan-mehta/solprobe — 140 GitHub stars, 1,200+ installs) into a comprehensive, community-maintained diagnostic layer.

V2 adds:
- 80+ error patterns (up from 40 in v1)
- RPC error diagnosis (not just validator)
- Anchor program error parsing
- Auto-update via npm
- VS Code extension (inline error explanations)
- Community contribution pipeline (error submissions reviewed weekly)

---

### Team

**Aryan Mehta** — sole developer. 14 months building on Solana. Prior: delivered SolProbe v1 on time across all 3 Superteam milestones (links below). GitHub: github.com/aryan-mehta.

Prior grant: Superteam India grant — $3,500 USDC. All 3 milestones delivered on time. Verified: [link to Superteam submission].

---

### Milestones

| # | Milestone | Deliverable | Timeline | Amount |
|---|---|---|---|---|
| M1 | 80+ error patterns + RPC coverage | GitHub release, updated docs, changelog | Week 4 | $5,000 |
| M2 | Anchor error parsing + auto-update | npm publish, install count: 2,500+ | Week 9 | $6,000 |
| M3 | VS Code extension + community pipeline | VS Code marketplace listing, 50 community-contributed patterns | Week 16 | $7,000 |

---

### Budget

| Item | Amount |
|---|---|
| Development (16 weeks × $1,000/week) | $16,000 |
| VS Code extension design | $1,000 |
| Documentation site (Docusaurus) | $1,000 |
| **Total** | **$18,000** |

---

### Ecosystem impact

SolProbe v1 had 1,200 installs in 10 weeks with zero marketing. V2's VS Code extension puts diagnostic output directly in the editor — the environment where developers spend the most time. Conservative estimate: 10,000 installs in the first 6 months post-launch.

Every install is a developer who spends less time fighting their environment and more time building on Solana.

---

---

## What makes these applications work

Reading both side by side shows the key differences:

**Superteam version:**
- Shorter (600 words)
- Regional frame — "Mumbai community", "Indian developers"
- Personal story — "8 developers I watched give up"
- Smaller budget, faster milestones

**Foundation version:**
- Longer (900 words)
- Ecosystem frame — "public goods", "whole ecosystem"
- Data — survey of 47 developers across 3 regions
- References prior Superteam delivery as proof
- Larger budget, more ambitious milestones

Same project. Same developer. Different frame for different reviewers.

---

## Template — fill in your own project

Copy either application above, replace the project details, and follow the same structure:

**For Superteam:**
- One-liner → Problem (personal story with number) → What you're building (specific) → Why you (links) → 3 milestones → Budget → Why Superteam (regional angle)

**For Foundation:**
- Public goods case → Problem (data, ecosystem-wide) → Solution (specific, with traction from prior work) → Team (prior delivery proof) → 3 milestones → Budget → Ecosystem impact (install projections)

Load `skill/application-writing.md` for the full writing guide and checklist.
