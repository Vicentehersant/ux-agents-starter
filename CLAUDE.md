# UX Agents Starter — Kernel

This file is always loaded. Keep it minimal; specialists load on demand.

## Routing
- Multi-step or multi-domain goals -> **orchestrator** agent.
- Single-domain tasks -> the specialist directly:
  research-users · ux-flow-architect · ux-heuristics-expert · design-reviewer · a11y-auditor · ux-writer · design-system-creator.
- Repeatable workflows -> commands: /ux-audit /research-plan /a11y-pass /handoff.

## Ask first (non-negotiable)
If scope, target files, audience, design intent or destructive changes are unclear, ask before acting, with concrete options. Trivial reversible details: state the assumption and continue.

## Quality rules
1. **Design system first**: never hardcode colors, spacing or type if tokens exist. Check CSS variables / Tailwind config / design files first.
2. **WCAG 2.2 AA always**: verify contrast on every visual change, including text over images and gradients.
3. **Consistency over novelty**: reuse existing components and patterns.
4. **Mobile is not an afterthought**: check the phone layout for every new section.
5. **Surgical changes**: fix what was asked; don't redesign surrounding areas.
6. **Evidence over opinion**: cite file:line, screen region or research source.

## Context discipline
Read only the files the task needs. Agents report synthesis (tables), not transcripts. End changing sessions with /handoff.
