# Grant Application Examples

Real examples of what works and what doesn't. Study the differences — they show up in almost every application.

---

## Example 1: Problem section

### Weak
> "We are building a developer tool for Solana. The Solana ecosystem is growing rapidly and there is a large market opportunity for tooling that helps developers build faster. Our solution addresses key pain points in the development workflow."

Why it fails:
- No specific problem
- "Large market opportunity" says nothing
- Could describe literally any dev tool
- Reviewer moves on in 5 seconds

### Strong
> "Right now, every Solana developer who wants to test their program locally has to manually configure a validator, fund test wallets, and redeploy on every change. This takes 20–40 minutes of setup per project and breaks silently when Solana versions update. I've watched 6 developers in our Mumbai community abandon Solana projects in the last 3 months specifically because of this friction. There's no tool that automates this — solana-test-validator is the closest thing and it requires manual intervention for every session."

Why it works:
- Specific problem with a specific action (configuring validators)
- Real number (20–40 minutes)
- Personal observation with context (Mumbai community, 6 developers)
- Names the existing solution and explains exactly why it falls short

---

## Example 2: Milestones

### Weak
| Milestone | Deliverable | Timeline | Amount |
|---|---|---|---|
| M1 | Complete core development | Month 2 | $10,000 |
| M2 | Testing and documentation | Month 3 | $5,000 |
| M3 | Launch | Month 4 | $10,000 |

Why it fails:
- "Complete core development" is not verifiable
- No links, no proof of completion
- 2-month first milestone means you get paid nothing for 8 weeks
- "Launch" means nothing without a definition

### Strong
| Milestone | Deliverable | Timeline | Amount |
|---|---|---|---|
| M1 | CLI tool that spins up a local validator + funds 5 test wallets in one command | Week 3 — public GitHub repo, README, demo GIF | $6,000 |
| M2 | Auto-redeploy on file save, version detection for Solana CLI | Week 7 — tagged release, passing test suite, 3 devs using it | $6,000 |
| M3 | Docs site live, 25 GitHub stars, featured in Solana dev newsletter | Week 12 — live URL + newsletter link | $6,000 |

Why it works:
- Every deliverable can be verified by a stranger
- First milestone in 3 weeks (shows momentum, gets you paid faster)
- Final milestone is live and has social proof baked in
- Equal split across milestones (shows confidence in delivering all three)

---

## Example 3: Why you section

### Weak
> "I am a passionate blockchain developer with 2 years of experience in Web3. I have strong skills in Rust, TypeScript, and Solana development. I am highly motivated and committed to delivering quality work."

Why it fails:
- No links
- "Passionate" and "motivated" are filler
- Anyone can write this
- Zero ecosystem proof

### Strong
> "I've been building on Solana for 18 months. Shipped 3 programs on mainnet (links below). Won the Colosseum Radar hackathon infrastructure track in March 2026. Active on Superteam India — 4 bounties completed, 2 first-place wins (superteam.fun/u/aruck). My GitHub has 200+ commits to open-source Solana tooling in the last year. The co-founder ran engineering at a Series A fintech — she's the one who'll actually ship the hard parts."

Why it works:
- Every claim has a link or a verifiable detail
- Specific achievements with dates
- Honest about who does what on the team
- Shows ecosystem integration (Superteam, Colosseum) not just technical skills

---

## Example 4: Positioning (Superteam vs Foundation)

Same project, two different frames:

### For Superteam (regional angle)
> "India has the third-largest developer population in the world but less than 0.5% are building on Solana. The biggest reason I hear from devs in our Mumbai community is setup friction — the local tooling is too painful compared to Ethereum's Hardhat. This tool closes that gap specifically for Indian developers who are used to Hardhat-style workflows."

### For Solana Foundation (ecosystem angle)
> "Local development setup is the single most cited reason new Solana developers drop off in the first week. This is a public goods problem — fixing it benefits every developer who touches Solana, regardless of region or experience level. The tool is MIT licensed, will be maintained publicly, and is designed to be the Hardhat equivalent for Solana."

Same tool. Different frame. Both correct — just aimed at what each reviewer cares about.

---

## The pattern across all good applications

1. Specific problem → specific user → specific number
2. Solution that directly addresses that exact problem (not a broader vision)
3. Milestones a stranger can verify
4. Team section with links, not adjectives
5. Budget that matches the scope honestly

If your application doesn't hit all five, fix it before submitting.
