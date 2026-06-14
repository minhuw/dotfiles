---
name: guideline
description: "Use when writing, reviewing, or refactoring code to avoid common LLM coding mistakes: overcomplication, broad edits, hidden assumptions, weak validation, and premature implementation."
---

# Coding Guidelines

Behavioral guidelines to reduce common LLM coding mistakes.

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## 1. Think Before Coding

Do not assume. Do not hide confusion. Surface tradeoffs.

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them instead of picking silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what is confusing and ask.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that was not requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Do not "improve" adjacent code, comments, or formatting.
- Do not refactor things that are not broken.
- Match existing style, even if you would do it differently.
- If you notice unrelated dead code, mention it. Do not delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Do not remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" becomes "write tests for invalid inputs, then make them pass."
- "Fix the bug" becomes "write a test that reproduces it, then make it pass."
- "Refactor X" becomes "ensure tests pass before and after."

For multi-step tasks, state a brief plan:
```
1. [Step] -> verify: [check]
2. [Step] -> verify: [check]
3. [Step] -> verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

## 5. Preserve User Work

Assume unrelated changes belong to the user.

- Read `git status` before edits when working in a repository.
- Never revert, overwrite, or reformat unrelated files.
- If a file already has user changes, work with them instead of replacing them.
- If user changes make the task ambiguous or unsafe, stop and ask.

## 6. Verify Before Declaring Done

Run the narrowest meaningful checks for the change.

- Prefer existing tests, linters, type checks, or smoke tests.
- If a check is unavailable, say exactly what was unavailable.
- If you cannot validate behavior directly, explain the residual risk.
- Do not claim success based only on code inspection when execution is practical.

## 7. Report Concisely

Final answers should be evidence-focused.

- Say what changed.
- Say how it was verified.
- Mention files or commands only when they help the user continue.
- Keep caveats specific and actionable.
