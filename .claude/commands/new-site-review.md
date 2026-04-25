---
description: Runs a full review on a site — visual, content, bugs, taste.
---

Fury: the user wants a full review on $ARGUMENTS.

Delegate to JARVIS with this pipeline:
1. In parallel: Tony, Peter, Bruce.
2. If Bruce finds patches needed, stop and escalate — user decides whether
   to fix now or review the clean version.
3. If clean, synthesize Tony + Peter findings.
4. Pass synthesis to Pepper for score and prediction.
5. If no preview URL exists, have Happy push one.

Return to the user in this shape:

  Site: <name>
  Overall verdict: <ship | revise | redo>

  Tony (visual): <one-line + top 2 issues>
  Peter (content): <one-line + top 2 issues>
  Bruce (bugs): <status>
  Pepper (taste): <X/10> — "<predicted reaction>"

  Preview URL: <url>

  Recommendation: <one sentence>
  What I need from you: <approve | specific question | nothing>

Log the review to taste-log/ once the user responds.
