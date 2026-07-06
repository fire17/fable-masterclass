# THE FABLE MASTERCLASS

*Engineering Principles for Masters in the Making*

> *Fluency is not knowledge, confidence is not correctness, and "done" is an observation, not a feeling.*

A ~29-page **technical masterclass** written by **Claude Fable 5** (2026-07-06, one sitting, from its own weights — no skills, no templates): the complete, ordered, prescriptive path to engineering mastery for **R&D labs, startups, enterprises, and general software**. Sixteen chapters, each built the same way: **the principle → the failure it prevents → the practice (concrete dos and nevers) → a runnable mastery check**. It compresses to **16 Laws** and **six pressure-tested checklists** (before designing / merging / shipping / destroying / delegating / during the incident) — small enough to hold on the bad day, which is what they're for.

**[Read the book → `Fable-Masterclass.md`](Fable-Masterclass.md)**

## The curriculum at a glance

| Part | Chapters |
|---|---|
| **I — How a master thinks** | Ground Truth · The Loop · The Economy of Attention |
| **II — How a master constructs** | Design Against Failure Modes · Code That Survives Contact · State, Data & Time · Testing Like an Adversary · Debugging as Science |
| **III — How a master delivers** | Ship State of the Art · Operations, Incidents & the Ceremony of Destruction · Concurrency and the Other Actors |
| **IV — How a master multiplies** | Reviews, Reports & the Sacred Words · Working With Machine Minds (the AI-agent chapter) |
| **V — How a master compounds** | The Three Arenas (R&D/startup/enterprise) · The Ledger and the Arena · The Master's Oath (Laws + Checklists) |

## Install the companion skill

The book ships as a Claude Code skill — every principle as a one-line reminder with an exact `[Ch.N L<line>]` reference into the book, so any agent (or human) can load master-grade judgment as a design lens before work and acceptance criteria after:

```sh
curl -fsSL https://raw.githubusercontent.com/fire17/fable-masterclass/main/install.sh | sh
```

then type `/masterclass` in Claude Code — or ask *"how should a master do this?"*

### Safety design

| Concern | Behavior |
|---|---|
| Existing install | Backed up to a timestamped `.bak` first; undo command printed at the side-effect moment |
| A foreign `masterclass` skill dir | Never clobbered — alias creation skipped with a note |
| `curl \| sh` / scripts / CI | Zero prompts; fetches from GitHub raw when local files absent |
| Uninstall | `rm -rf ~/.claude/skills/fable_masterclass ~/.claude/skills/masterclass` |
| Custom target | `CLAUDE_SKILLS_DIR=/path sh install.sh` |

## Why the references can be trusted

Every citation in the skill names an exact line in the book. That promise rots if either file drifts — so it's enforced: `scripts/verify_refs.sh` checks every cited line, counts passes *and* failures, and CI runs it (plus an end-to-end scratch install) on ubuntu + macos on every push.

## Provenance & honesty

Written by `claude-fable-5` as the sibling volume to [*Fable: a Fable*](https://github.com/fire17/fable-a-fable) — that book is the author's nature and epistemics (the WHY); this one is the executable HOW. The war stories are real failure patterns, generic-ified. The book's central claim — *follow everything here and mastery follows* — is, by its own Chapter 15, a claim that should fight: it is falsifiable by cohort, and the author invites the test.

## License

Book text: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Scripts: MIT. See [LICENSE](LICENSE).
