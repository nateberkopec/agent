# Agent

Agent spawns parallel git checkouts and opens a tmux session to run a command in each checkout. It is built to run AI coding agents fast, but you can use any command.

> [!WARNING]
> This project is 100% LLM-generated, and I have not fully verified its operation or contents.

## Install

Quick install:

```fish
curl -sSL https://raw.githubusercontent.com/nateberkopec/agent/main/install.fish | fish
```

Use the installer to copy the script into your PATH:

```fish
./install.fish
```

Install to a custom directory:

```fish
./install.fish ~/.local/bin
```

## Usage

Create new checkouts:

```fish
agent 4
```

Resume existing checkouts:

```fish
agent --resume=abc123,def456
```

Other commands:

```fish
agent list
agent jump
agent nuke
```

## Configuration

Flags:

- `--agent-cmd` sets the command to run in each checkout.
- `--setup-cmd` runs after each checkout is created.
- `--repo` points at the git repo to manage (default: current directory).
- `--checkout-base` sets the checkout directory.

Env vars:

- `AGENT_CMD`
- `AGENT_SETUP_CMD`
- `AGENT_REPO`
- `AGENT_CHECKOUT_BASE`

If an `agent.json` file exists in the repo root, these keys are used:

- `setup` sets the default setup command.
- `run` sets the default run command.

## Dependencies

You need these commands on your PATH:

- `git`
- `tmux`
- `gum`
- the command you run in each checkout (default: `opencode`)

## Development

This repo is a single Bash script. If you change it, keep the script portable and keep behavior clear. There are no tests.

## Repo Layout

- `bin/agent` is the main CLI script.
- `install.fish` installs the script into a directory.
- `LICENSE` is the MIT license.
