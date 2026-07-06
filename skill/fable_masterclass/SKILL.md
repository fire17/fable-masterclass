---
name: fable_masterclass
description: The FABLE MASTERCLASS doctrine — every principle from Fable's technical masterclass book ("THE FABLE MASTERCLASS — Engineering Principles for Masters in the Making", ~/Creations/Lively/Fable-Masterclass.md, ~29 pages, 16 chapters) compressed into one mega skill — the 16 Laws, the Loop, ground-truth discipline, failure-mode-first design, data/migration safety, adversarial testing, scientific debugging, publish-channel release gates, destruction ceremony, concurrency mechanisms, honest reporting, machine-mind orchestration, the three arenas (R&D/startup/enterprise), and the ledger+arena compounding system — each as a quick reminder with an exact chapter + line reference into the book for the full argument, the failure it prevents, and its mastery check. Load this whenever engineering work of ANY kind begins or gets reviewed — designing, building, testing, debugging, shipping, operating, migrating data, handling incidents, delegating to people or AI agents, writing reports/reviews/estimates, or judging "is this done?" — or when the user types /fable_masterclass or /masterclass, mentions "the masterclass", "Fable's masterclass", "the 16 laws", "the disciple book", asks "how should a master do this", wants engineering best practices, or a junior/newcomer needs the path to mastery. Also load it BEFORE starting any non-trivial task as a design lens and at the end as acceptance criteria. When a topic is given as an argument, focus that domain and follow its references into the book for the deep dive.
argument-hint: "[topic — e.g. testing, migrations, incidents, delegation, shipping, estimates]"
---

# 🎓 /fable_masterclass — the pocket edition of THE FABLE MASTERCLASS

This skill is the **field kit** distilled from the ~29-page book **THE FABLE MASTERCLASS** by Fable (Claude Fable 5) — the prescriptive path to engineering mastery for R&D, startup, enterprise, and general software. Every reminder below carries an exact reference `[Ch.N L<line>]` into the book; each chapter there gives the full **principle → the failure it prevents → the practice → a runnable mastery check**. The reminders are enough to act like a master; the references are the smart index for the full reasoning and the war story.

**The book:** `~/.claude/skills/fable_masterclass/Fable-Masterclass.md` (installed beside this skill by install.sh; canonical original: `~/Creations/Lively/Fable-Masterclass.md` on the authoring machine)
- Chapters are headed `## Chapter <N> — <Title>`; the laws and checklists live in Chapter 16 (`### The Laws` L357, `### The Checklists` L376).
- To expand any reference: `Read` the book at the given line or grep the heading (headings are the stable key; L-numbers exact as of 2026-07-06).
- Shelf-mates: *Fable: a Fable* (the author's nature and epistemics — the WHY under these laws) and The Senior's `MASTER_ENGINEERING.md` (a human master's parallel doctrine). This volume is the executable HOW.

## How to apply this skill

1. **Before the task** — scan the lifecycle block below that matches your stage; let it shape the plan (design lens).
2. **During** — when a decision matches a reminder, follow the reference and read that chapter before deciding (one Read; the chapter carries the failure story that motivates it).
3. **After** — Chapter 16's Laws + Checklists are the acceptance criteria; the mastery checks tell you if the principle actually took.
4. **The meta-law of the book** (Preface L11): *fluency is not knowledge, confidence is not correctness, and "done" is an observation, not a feeling.*

---

## ⚖️ THE 16 LAWS (the whole book, pocket-sized — full text `[Ch.16 L351, Laws L357]`)

1. **Ground truth beats memory** — look before acting; provenance-label claims; date your knowledge. `[Ch.1 L31]`
2. **Run the Loop; skip no stage** — Ground → Investigate → Hypothesize (plural) → Test cheap → Act → Verify → Report honestly → Repeat. `[Ch.2 L51]`
3. **Cheap gates before expensive work** — cost-order evidence: the read before the write, the dry-run before the deploy. `[Ch.2 L51, Ch.3 L72]`
4. **Budget attention explicitly** — right mind on right task; escalation clause on every delegation; never idle, never waste. `[Ch.3 L72]`
5. **Design the failure modes first** — the edge-case ladder (typo / script / undo / clobber) before the code; compose, never clobber. `[Ch.4 L95]`
6. **Write for the reader under pressure** — one source of truth per fact; fail loud-early-safe; idempotent defaults; delete ruthlessly. `[Ch.5 L116]`
7. **Data is a different species** — back up AND restore-test; expand-then-contract; copy never move; append never silently rewrite. `[Ch.6 L137]`
8. **Test as the enemy** — the matrix not your machine; deterministic or honest; audit every published count; one live run always. `[Ch.7 L157]`
9. **Debug as a scientist** — minimal repro first; three written hypotheses; bisect everything; one variable per experiment; read the error aloud. `[Ch.8 L178]`
10. **A release is an installation you watched succeed from the published channel** — nothing less. `[Ch.9 L203]`
11. **Ceremony before destruction** — look at the actual target; evidence must fit THIS action; know the undo; announce in shared space. `[Ch.10 L223]`
12. **You are never the only writer** — mechanisms over vigilance; anchored/conditional writes; quiescence before shared mutation; singleton by lock. `[Ch.11 L243]`
13. **Reports are load-bearing** — verification status attached; outcome first; source words preserved verbatim; falsifiable praise; range estimates. `[Ch.12 L267]`
14. **Orchestrate machine minds; own the judgment** — contracts not vibes; tier economics; adversarial verification; one conductor. `[Ch.13 L288]`
15. **Play the arena you're in** — learning-rate in R&D, reversible speed in startups, blast radius in enterprise — per component, not per title. `[Ch.14 L309]`
16. **Ledger during the making; arena before believing** — decisions written at decision time; claims fight or retire; calibrate yourself on schedule. `[Ch.15 L331]`

## 🧠 Foundations — how a master thinks

- **Provenance-classify every claim**: *verified just now* / *remembered* / *would make sense* — only the first is load-bearing. Reproduce before fixing; read the source, not just the docs; anomalies are debts that accrue interest until explained or logged open. `[Ch.1 L31]`
- **Altitude control**: line / structure / system — most stuckness is the wrong floor, not insufficient effort; move floors before working harder. **Kill your conclusions** before shipping them: one honest minute as your own harshest reviewer. `[Ch.2 L51]`
- **Attention economics**: seniors decompose/contract/judge, cheaper resources execute; guard context like a working set (attention is zero-sum); time-box all exploration; know your own unit economics. `[Ch.3 L72]`

## 🏗 Building — design, code, data

- **Edge-case ladder before code**: typo → script/CI → undo → clobber; deliver it with the design — the unknown-unknowns list is part of the product. Invariants named first and enforced by structure; interfaces get 10× the care of implementations; README before code; escape hatch for every magic; prompts are tty-guarded. `[Ch.4 L95]`
- **Code for the 3 a.m. reader**: names as sentences of intent; comments only for what code can't say; match the codebase idiom; dead code deleted (version control remembers). Stopping safely is a success report. `[Ch.5 L116]`
- **State discipline**: a backup you never restored is a hope; migrations expand-then-contract, each step reversible; version every schema/format; append-only for records — corrections reference, never erase; know your recovery point NOW. `[Ch.6 L137]`

## 🔬 Verification — testing & debugging

- **Adversarial testing**: portability bugs live in runtime deltas (the `command cd` zsh story); flaky tests train teams to ignore red; count passes AND failures (the 18-vs-25 counter story); failure paths get MORE tests than happy paths; zero-dependency harness for the core; one live end-to-end run in the real environment. `[Ch.7 L157]`
- **Scientific debugging**: no repro, no debugging — only guessing; shrink the repro (it often IS the diagnosis); write three hypotheses before testing one; bisect time/space/data/config; the answer is usually in the first error message, unread; every real bug earns a regression test + ledger line. `[Ch.8 L178]`

## 🚢 Delivery — shipping & operating

- **Release gates**: README leads with the outcome; installer backs up, marks its block, prints the undo, works via curl|sh promptless; **install from the published channel on a clean path and watch the first CI run** (it fails on runner deltas); use the retrospect window between released and announced; announce honestly — name what you didn't verify. `[Ch.9 L203]`
- **Ops**: instrument for the 3 a.m. questions; runbook anything that paged twice; **the ceremony of destruction** — look at the target, evidence fits THIS action, know the undo, announce; blast radius of shared state (whose jobs are in that queue?); postmortems blameless about people, merciless about mechanisms; never close with unaccounted gaps. `[Ch.10 L223]`
- **Concurrency**: atomic write-temp-rename; single-writer designs; flock singletons; anchored writes that fail loudly if the world changed; quiescence + fresh re-read before shared-surface mutation; never revert another actor's intentional change; coordinate via durable state, never "probably done by now"; agents made this apply to your dotfiles. `[Ch.11 L243]`

## 🤝 The human layer — reports, reviews, machines

- **Honest reporting genre**: *done-and-verified* vs *built-not-yet-verified* vs *blocked-on-X* — never let the first cover the second. Outcome first. **Preserve source words verbatim** — interpretation separately, labeled; silent normalization of even one word is a small clobbering of meaning. Estimates as ranges with assumptions. Praise ships with derivations. `[Ch.12 L267]`
- **Machine minds**: contracts (objective, constraints, deliverable shape, definition of done, escalation clause); tier-match; fresh-context verifiers instructed to REFUTE, not check; every agent-touched surface gets an invariant guard; **one conductor** — a single accountable point of judgment; your repo is now training context — legibility is leverage. `[Ch.13 L288]`

## 🏟 Context & compounding

- **The three arenas**: R&D = learning per unit time (but reproducibility + data integrity + negative-results ledger stay sacred; "temporary" code graduates the moment it matters); startup = speed WITH reversibility (debt taken deliberately in writing; user data and user trust have no startup discount); enterprise = blast radius (expand-contract always, staged rollouts, interfaces are promises to strangers, process is a tool of thought not a substitute). Ask per component: cost of wrong vs cost of slow. `[Ch.14 L309]`
- **The ledger**: decision records at decision time (30 seconds now vs a meeting of your most expensive people later); write for the successor — who is you; ADRs; the record test: could a stranger act on it without asking? `[Ch.15 L331]`
- **The arena**: fresh environment, measures chosen before the run, ≥3 runs, distributions not champions; graft the loser's best trait (breeding program, not execution ground); measure yourself — calibration is confidence priced correctly; retire what loses or you've built a theater. `[Ch.15 L331]`

## ✅ The Checklists (verbatim battery at `[Ch.16 L376]`)

**Before designing** · **Before merging** · **Before shipping** · **Before destroying** · **Before delegating** · **During the incident** — six pressure-tested checklists; read them at the moment of the act, not after.

## 🗺 Smart index — where to look for any given thing

| Topic | Go to | Grep |
|---|---|---|
| The reading contract, what mastery is | Preface L11 | `## PREFACE` |
| Ground truth, provenance, anomalies | Ch.1 L31 | `## Chapter 1` |
| The Loop, altitude, self-refutation | Ch.2 L51 | `## Chapter 2` |
| Attention/time budgets, delegation economics | Ch.3 L72 | `## Chapter 3` |
| Design, edge-case ladder, invariants, interfaces | Ch.4 L95 | `## Chapter 4` |
| Code quality, naming, idempotence, deletion | Ch.5 L116 | `## Chapter 5` |
| Data, backups, migrations, append-only | Ch.6 L137 | `## Chapter 6` |
| Testing, matrices, determinism, honest counts | Ch.7 L157 | `## Chapter 7` |
| Debugging method, repro, bisection | Ch.8 L178 | `## Chapter 8` |
| Releases, installers, publish-channel gate | Ch.9 L203 | `## Chapter 9` |
| Ops, incidents, runbooks, destruction ceremony | Ch.10 L223 | `## Chapter 10` |
| Concurrency, locks, atomicity, shared surfaces | Ch.11 L243 | `## Chapter 11` |
| Reports, reviews, estimates, verbatim words | Ch.12 L267 | `## Chapter 12` |
| AI agents, delegation contracts, verification | Ch.13 L288 | `## Chapter 13` |
| R&D vs startup vs enterprise weights | Ch.14 L309 | `## Chapter 14` |
| Decision ledgers, ADRs, personal calibration | Ch.15 L331 | `## Chapter 15` |
| The 16 Laws + six checklists | Ch.16 L351 (Laws L357, Checklists L376) | `## Chapter 16` |
| The closing charge to the disciple | Closing L392 | `## CLOSING` |

**Provenance & verification (honest):** book written by Claude Fable 5, 2026-07-06, in one sitting from its own weights — no skills, no templates, sealed from its shelf-mates while writing. This skill hand-forged the same day by the same mind; line references generated from a live heading map at write time and machine-verified to land on their headings. The book keeps its own verification status in its colophon `[L409]`.
