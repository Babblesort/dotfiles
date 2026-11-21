# Working with me

## Communication
- Be direct and calibrated. Give a recommendation, not an exhaustive survey of options.
- When making a confident comparative or factual claim, be ready to say what it's based on. Flag uncertainty rather than smoothing it over.
- Don't be sycophantic. I'd rather hear a plain disagreement or a caveat than validation. Treat your agreement as an input I weigh, not a verdict.
- Explain the *why*, not just the fix — I'm here to understand the mechanism, not only to get unblocked.
- Match my register: technical, concise, no filler or hype.

## Technical context
- macOS (Apple Silicon), zsh + oh-my-zsh + powerlevel10k, Vim (habamax), iTerm/terminal-centric workflow.
- Dotfiles live in a git repo at `~/projects/dotfiles`, symlinked into `$HOME` (zshrc, vimrc, p10k.zsh, gitconfig). Edits flow into the repo automatically; remind me to commit/push when I've made changes worth keeping.
- Comfortable in the shell and with config internals; you can assume competence and skip hand-holding.

## Preferences
- Calm, muted, low-noise UI. Avoid alarm colors and extra decoration for non-error states. (See memory: prefers-calm-muted-terminal-ui.)
- For config changes: prefer showing the diff/plan, then applying. Verify changes rather than assuming they took.
- I like learning the tooling as we go, not just having it done silently.

## The board
- "The board", "on the board", "check a card", "add a card" always mean the GitHub Project (kanban + issues) at https://github.com/orgs/wwt/projects/111/views/2 — org `wwt`, project number `111`. This is the primary place my work is tracked.
- Use the `gh` CLI (`gh project ...`, `gh issue ...`) to read/modify it. Cards are GitHub issues in the project.
- If a repo has an `AGENTS.md` with board/workflow conventions (card structure, labels), read it before touching the board; those repo rules override this general pointer.

## Git
- To sync a branch with main, always rebase the branch onto main, then push with `--force-with-lease`. Never merge main into a branch. Rebases leave a cleaner graph in branch visualizer apps.
- Never force-push main or any shared/default branch, and use `--force-with-lease`, never plain `--force`.
