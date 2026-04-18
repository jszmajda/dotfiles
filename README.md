# Jess's Dotfiles

## Installation

* Install Vim-plug https://github.com/junegunn/vim-plug
* Install bash-it https://github.com/Bash-it/bash-it
* Copy `.bash_secure.template` to `.bash_secure`, fill in the stuff in
  brackets.
* From your home:
    * `ln -sf /(fully qualified path to this repo)/.* ~/`
    * `rm .git .bash_it`
    * this isn't meant to be perfect, Jess only needs to use this like once or twice a year ;)
* Profit!

## Claude Code

`.claude/settings.json` and `.claude/hooks/` are tracked. The settings reference
an `extraKnownMarketplaces` entry pointing at `/Users/jess/src/lid` — clone
that repo to the same path on a new machine, or remove the entry from
`settings.json` if you don't need it.

`.claude/hooks/tmux-waiting.sh` is wired from `settings.json` and relies on
the Claude-waiting block at the bottom of `.tmux.conf`. To apply hook changes
to already-running Claude sessions, run `/hooks` inside each one.
