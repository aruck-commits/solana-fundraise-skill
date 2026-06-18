#!/bin/bash

set -e

REPO_URL="https://github.com/aruck-commits/solana-fundraise-skill.git"
SKILL_NAME="solana-fundraise-skill"

echo ""
echo "solana-fundraise-skill — custom installer"
echo "==========================================="
echo ""

# Step 1: Choose install location
echo "Where do you want to install the skill?"
echo "  1) Personal (~/.claude/skills/) — available across all projects"
echo "  2) Project (./.claude/skills/) — this project only"
echo "  3) Custom path"
echo ""
read -p "Choose [1/2/3] (default: 1): " LOCATION_CHOICE
LOCATION_CHOICE=${LOCATION_CHOICE:-1}

case $LOCATION_CHOICE in
  2)
    SKILL_DIR="./.claude/skills/$SKILL_NAME"
    CLAUDE_MD_DIR="./.claude"
    echo "Installing to project directory..."
    ;;
  3)
    read -p "Enter custom path: " CUSTOM_PATH
    SKILL_DIR="$CUSTOM_PATH/$SKILL_NAME"
    CLAUDE_MD_DIR="$CUSTOM_PATH"
    echo "Installing to custom path: $CUSTOM_PATH"
    ;;
  *)
    SKILL_DIR="$HOME/.claude/skills/$SKILL_NAME"
    CLAUDE_MD_DIR="$HOME/.claude"
    echo "Installing to personal directory..."
    ;;
esac

# Step 2: Clone or update
mkdir -p "$(dirname "$SKILL_DIR")"

if [ -d "$SKILL_DIR" ]; then
  echo ""
  echo "Skill already exists at $SKILL_DIR"
  read -p "Update to latest version? [Y/n]: " UPDATE_CHOICE
  UPDATE_CHOICE=${UPDATE_CHOICE:-Y}
  if [[ "$UPDATE_CHOICE" =~ ^[Yy]$ ]]; then
    cd "$SKILL_DIR" && git pull
    echo "Updated successfully."
  else
    echo "Skipping update."
  fi
else
  git clone "$REPO_URL" "$SKILL_DIR"
  echo "Cloned to $SKILL_DIR"
fi

# Step 3: CLAUDE.md placement
echo ""
echo "Where do you want to place CLAUDE.md?"
echo "  1) $CLAUDE_MD_DIR/CLAUDE.md (recommended)"
echo "  2) Skip — I'll manage CLAUDE.md manually"
echo ""
read -p "Choose [1/2] (default: 1): " CLAUDE_CHOICE
CLAUDE_CHOICE=${CLAUDE_CHOICE:-1}

if [ "$CLAUDE_CHOICE" = "1" ]; then
  mkdir -p "$CLAUDE_MD_DIR"
  CLAUDE_TARGET="$CLAUDE_MD_DIR/CLAUDE.md"
  SKILL_ENTRY="@$SKILL_DIR/SKILL.md"

  if [ -f "$CLAUDE_TARGET" ]; then
    if ! grep -q "$SKILL_NAME" "$CLAUDE_TARGET"; then
      echo "" >> "$CLAUDE_TARGET"
      echo "# Solana Fundraise Skill" >> "$CLAUDE_TARGET"
      echo "$SKILL_ENTRY" >> "$CLAUDE_TARGET"
      echo "Added skill entry to existing CLAUDE.md"
    else
      echo "Skill already present in CLAUDE.md — skipping."
    fi
  else
    cp "$SKILL_DIR/CLAUDE.md" "$CLAUDE_TARGET"
    echo "CLAUDE.md placed at $CLAUDE_TARGET"
  fi
else
  echo "Skipping CLAUDE.md placement."
  echo "To load manually, add this to your CLAUDE.md:"
  echo "  @$SKILL_DIR/SKILL.md"
fi

# Done
echo ""
echo "==========================================="
echo "solana-fundraise-skill installed."
echo ""
echo "Try asking Claude Code:"
echo "  'Which grant should I apply to first?'"
echo "  'Review my draft grant application'"
echo "  'Run a grant readiness check on my project'"
echo ""
