# solana-fundraise-skill

Every Solana AI skill out there teaches you how to build. None of them teach you how to get funded.

This skill fixes that. Add it to Claude Code and your agent can help you navigate Solana ecosystem grants — which program to apply to, how to write proposals that don't get ignored, and how to position your project depending on what stage you're at.

Covers Solana Foundation, Superteam Earn, and Colosseum.

---

## What's inside

```
solana-fundraise-skill/
├── SKILL.md                          ← routes the agent to the right file
├── install.sh                        ← one-click setup
├── rules/
│   └── grant-rules.md                ← agent behavior rules (always loaded)
├── commands/
│   └── grant-check.md                ← /grant-check readiness assessment
├── agents/
│   └── grant-reviewer.md             ← reviews draft applications section by section
└── skill/
    ├── grants-overview.md            ← which program is right for you + decision tree
    ├── solana-foundation.md          ← Foundation grant structure, what they fund, what they reject
    ├── superteam-grants.md           ← Superteam Earn + regional grants
    ├── colosseum.md                  ← hackathon strategy + accelerator path
    ├── application-writing.md        ← proposal templates, milestone format, checklist
    ├── positioning.md                ← how to frame your project so reviewers actually care
    └── examples.md                   ← real examples of strong vs weak applications
```

---

## Install

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

## Try it

Once installed, ask Claude Code things like:

- "Which grant should I apply to first?"
- "Write the milestones section for my Superteam proposal"
- "Review my draft application before I submit"
- "Run a grant readiness check on my project"
- "Show me examples of strong vs weak grant applications"

---

## License

MIT — [@aruck2006](https://x.com/aruck2006)
