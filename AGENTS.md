# Repository contract

## Sources of truth

- `.prolog/kb/lem_migration.pl` is the canonical migration inventory and
  ownership map.
- `.prolog/kb/issues.pl` is the canonical issue/dependency/queue map.
- `lem/init.lisp` and future files under `lem/` are the Lem configuration
  sources deployed by Home Manager.
- `lost-rob0t/dotfiles@6adff8f295201bec7c45b655123615c56a20d3fb`
  is the initial Emacs evidence baseline. Generated Emacs files do not outrank
  their literate Org sources.
- `lem-project/lem@75b48185d5e90283d6ab50cccff15322b6fb8987`
  is the initial Lem implementation baseline.

Update implementation, documentation, and Prolog facts together. A change is
incomplete when these disagree.

## RAGE

Use the canonical `rage` and `adadr` skills from `lost-rob0t/skills`.

1. Consume one eligible issue from #1's declared queue.
2. Work on `rage/<issue>-<slug>`.
3. Initialize and preserve the immutable RAGE start SHA/run log.
4. Follow Analyze -> Gate -> Execute -> Evaluate -> Recurse.
5. Use TDD and run focused, full-local, packaging, Prolog, and exact-head CI
   gates before merge.
6. Preserve failed iterations and architecture contradictions.

The control mode is intentionally `unselected`. No implementation issue may
start until issue #2 records either human-gated ADADR or Auto-RAGE. Never infer
or silently choose the mode.

## Porting rules

- Port behavior, not Emacs symbol names.
- Common Lisp is the native Lem extension language. Do not copy Emacs Lisp and
  call it a port.
- Every active package, Doom module, custom component, snippet family, and
  external dependency needs one issue owner or an approved rejection.
- Org files remain canonical data. Never test destructive writes on live notes.
- AI, MCP, Temple, and optional integrations are lazy. Missing providers,
  credentials, Temple, or `ai-agent` must never break startup.
- Do not replace the current Doom/default-editor path before issue #16 passes
  and the user explicitly approves cutover.
- Credentials, tokens, private Org data, capture output, and raw sensitive data
  never enter Git or logs.

## Required checks

Run `bash tests/verify-kb.sh` for all KB changes. Once implementation is authorized,
also run `bash tests/verify-kb.sh --implementation`. Nix/Home Manager work additionally
requires a real `flake.lock`, `nix flake check`, affected profile evaluations,
package builds, launch smoke tests, and rollback evidence from a Nix host.
