# solana-fundraise-skill

Every Solana AI skill out there teaches you how to build. None of them teach you how to get funded.

This skill fixes that. Add it to Claude Code and your agent becomes an expert Solana fundraising advisor — covering the full journey from "what should I build to get funded" all the way to "I got funded, now how do I deliver."

Covers Solana Foundation, Superteam Earn, and Colosseum.

---

## What's inside

```
solana-fundraise-skill/
├── CLAUDE.md                          ← Claude Code configuration
├── SKILL.md                           ← main router (19 routes)
├── install.sh                         ← standard installer
├── install-custom.sh                  ← custom installer (location, options)
│
├── skill/                             ← 14 knowledge files
│   ├── grants-overview.md             ← which program is right for you + decision tree
│   ├── what-gets-funded.md            ← patterns from funded projects across all 3 programs
│   ├── solana-foundation.md           ← Foundation grant deep dive
│   ├── superteam-grants.md            ← Superteam Earn + regional grants
│   ├── colosseum.md                   ← hackathon strategy + accelerator path
│   ├── application-writing.md         ← proposal templates, milestone format, checklist
│   ├── positioning.md                 ← how to frame your project for reviewers
│   ├── examples.md                    ← real examples of strong vs weak applications
│   ├── social-proof.md                ← building GitHub, X, and Superteam presence before applying
│   ├── cold-outreach.md               ← how to reach grant reviewers and ecosystem leads
│   ├── cofounder-matching.md          ← finding a team for Colosseum and hackathons
│   ├── rejection-handling.md          ← what to do after a rejection
│   ├── post-funding.md                ← milestone delivery, payments, and stacking the next grant
│   └── resources.md                   ← curated links, portals, community channels
│
├── commands/                          ← 3 slash commands
│   ├── grant-check.md                 ← /grant-check: readiness assessment before applying
│   ├── milestone-builder.md           ← /milestone-builder: build a reviewer-approved milestone plan
│   └── position-project.md            ← /position-project: find the strongest angle per program
│
├── agents/                            ← 2 specialized agents
│   ├── grant-reviewer.md              ← reviews draft applications section by section
│   └── grant-stacking.md              ← builds a multi-program funding strategy
│
└── rules/                             ← 1 rules file
    └── grant-rules.md                 ← agent behavior rules (always loaded)
```

---

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/aruck-commits/solana-fundraise-skill/main/install.sh | bash
```

Custom install (choose location, options):

```bash
git clone https://github.com/aruck-commits/solana-fundraise-skill.git
cd solana-fundraise-skill
bash install-custom.sh
```

---

## Try it

Once installed, ask Claude Code things like:

- "Which grant should I apply to first?"
- "What kinds of projects actually get funded by Superteam?"
- "Run a grant readiness check on my project"
- "Build my milestone plan for a Foundation grant"
- "Review my draft application before I submit"
- "I got rejected — what do I do now?"
- "Build me a multi-program funding strategy"
- "How do I reach out to the Superteam India lead?"

---

## Why this exists

The Solana AI Kit has deep technical skills — build, deploy, audit, ship. But when a founder asks their coding agent "how do I fund this?" the answer falls apart. No skill in the ecosystem covers grant strategy, application writing, positioning, social proof, rejection handling, or post-funding delivery.

This skill covers the full fundraising layer, end to end.

---

## License

MIT — [@aruck2006](https://x.com/aruck2006)
