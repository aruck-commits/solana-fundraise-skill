solana-fundraise-skill
A Claude Code / Codex skill that turns any AI coding agent into an expert Solana ecosystem fundraising advisor.
Covers grants from the Solana Foundation, Superteam Earn, and Colosseum — for founders at any stage, from raw idea to live product.
---
The problem this solves
The Solana AI Kit has deep technical skills — how to build, deploy, audit, and ship. But when a founder asks their coding agent "how do I fund this?" the answer falls apart. There's no skill in the ecosystem that covers:
Which grant program to apply to (and when)
How to write a milestone-based proposal that actually gets funded
How to position a project for grant reviewers vs VC vs community
The real differences between Superteam, Foundation, and Colosseum — and how to stack them
This skill fills that gap.
---
What's inside
```
solana-fundraise-skill/
├── SKILL.md                     ← main router
├── README.md                    ← this file
├── install.sh                   ← one-click installer
└── skill/
    ├── grants-overview.md       ← map of all programs + decision tree
    ├── solana-foundation.md     ← Foundation grant deep dive
    ├── superteam-grants.md      ← Superteam Earn + regional grants
    ├── colosseum.md             ← hackathon strategy + accelerator path
    ├── application-writing.md   ← templates, checklists, examples
    └── positioning.md           ← how to frame your project to win
```
---
Install
```bash
curl -fsSL https://raw.githubusercontent.com/aruck-commits/solana-fundraise-skill/main/install.sh | bash
```
Or manually:
```bash
git clone https://github.com/aruck-commits/solana-fundraise-skill.git
cd solana-fundraise-skill
bash install.sh
```
---
Usage
Once installed, your Claude Code agent will automatically route fundraising questions to the right skill file.
Example prompts:
"I want to apply for a Solana Foundation grant — where do I start?"
"Help me write the milestones section of my Superteam grant proposal"
"Is my project ready for Colosseum? What do I need to fix?"
"How do I position my project for grant reviewers?"
---
Design principles
Progressive loading — only loads what's needed, token-efficient
Stage-aware — advice adapts to idea / prototype / live product
No fluff — direct, ecosystem-accurate, current to 2026 stack
Cross-domain — covers the fundraising layer that technical skills don't touch
---
License
MIT
---
Author
Built by @aruck2006 for the Solana AI Kit community bounty.
Contributions welcome — open a PR.
