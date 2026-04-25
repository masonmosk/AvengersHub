#!/bin/bash
# S.H.I.E.L.D. Morning Brief — runs daily via cron
# Posts briefing to #daily-breifing on Slack

export PATH="/usr/local/bin:/opt/homebrew/bin:$HOME/.npm-global/bin:$PATH"

PROJ="/Users/masonmoskowitz/Desktop/Avengers HQ"
LOG="$HOME/Library/Logs/shield-brief.log"

echo "$(date): Starting morning brief..." >> "$LOG"

cd "$PROJ" && npx claude -p \
  "You are Fury. Produce today's morning brief exactly as specified in .claude/commands/morning-brief.md. After writing the briefing file and updating data/current-mission.json, post a clean summary to Slack channel C0AV59BRSTG (#daily-breifing). Format the Slack message with bold section headers and bullet points. Sign it: — Fury" \
  >> "$LOG" 2>&1

echo "$(date): Brief complete." >> "$LOG"
