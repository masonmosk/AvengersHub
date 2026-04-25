---
description: Produces today's briefing at briefings/YYYY-MM-DD.md.
---

Fury: produce today's briefing.

1. Read the most recent file in briefings/ for context on what was in
   flight.
2. Run `git log --since="1 day ago" --all --oneline` across every site in
   sites/.
3. Scan taste-log/ for entries in the last 24 hours.
4. Check JARVIS for active website workstreams (ask briefly if needed).
5. Check Vercel for any preview deploys currently pending review.

Write briefings/YYYY-MM-DD.md with exactly four sections:
1. What needs you today
2. What the team is working on
3. What shipped / closed since yesterday
4. Flags

Under 250 words. Empty sections say "Nothing." — no filler.

Then print the briefing to the user in chat, and end with one line:
"Briefing saved to briefings/<filename>. Anything you want me to act on?"
