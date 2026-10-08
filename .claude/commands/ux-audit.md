---
description: Run a combined UX audit (heuristics + visual review + accessibility) on a page, flow or component
argument-hint: <page, URL, route or component>
---

Run a UX audit on: $ARGUMENTS

1. If the target is unclear, ask which page/flow and who the user is.
2. Use **ux-heuristics-expert** for usability issues.
3. Use **design-reviewer** for visual/UI consistency.
4. Use **a11y-auditor** for WCAG 2.2 AA.
5. Merge into one table sorted by severity: | # | Source | Location | Issue | Severity | Fix |
6. End with the top 5 fixes and anything that needs real-user validation.
