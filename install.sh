#!/bin/bash

set -e

SKILL_DIR="$HOME/.claude/skills/solana-fundraise-skill"
REPO_URL="https://github.com/aruck-commits/solana-fundraise-skill.git"

echo "Installing solana-fundraise-skill..."

# Create skills directory if it doesn't exist
mkdir -p "$HOME/.claude/skills"

# Clone or update
if [ -d "$SKILL_DIR" ]; then
  echo "Skill already installed. Updating..."
  cd "$SKILL_DIR" && git pull
else
  git clone "$REPO_URL" "$SKILL_DIR"
fi

# Add to CLAUDE.md if it exists
CLAUDE_MD="$HOME/CLAUDE.md"
SKILL_ENTRY="@~/.claude/skills/solana-fundraise-skill/SKILL.md"

if [ -f "$CLAUDE_MD" ]; then
  if ! grep -q "solana-fundraise-skill" "$CLAUDE_MD"; then
    echo "" >> "$CLAUDE_MD"
    echo "# Solana Fundraise Skill" >> "$CLAUDE_MD"
    echo "$SKILL_ENTRY" >> "$CLAUDE_MD"
    echo "Added to CLAUDE.md"
  else
    echo "Already present in CLAUDE.md"
  fi
else
  echo "# Solana Fundraise Skill" > "$CLAUDE_MD"
  echo "$SKILL_ENTRY" >> "$CLAUDE_MD"
  echo "Created CLAUDE.md with skill entry"
fi

echo ""
echo "solana-fundraise-skill installed successfully."
echo "Ask Claude Code: 'Help me apply for a Solana Foundation grant' to get started."
