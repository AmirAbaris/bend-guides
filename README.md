# Bend Guides

A repository version of the official `bend guide` documentation and examples (from **Bend 2.0.40**), preserved verbatim so you can read and browse everything comfortably outside the terminal.

## Guides & Reference

| Document | Source Command | Description |
| --- | --- | --- |
| [GUIDE.md](./GUIDE.md) | `bend guide` | Main Bend language guide, syntax reference, tooling, and internals |
| [docs/shaders.md](./docs/shaders.md) | `bend guide shaders` | *Shaders in Bend* — writing efficient GPU/parallel shaders |
| [docs/effects.md](./docs/effects.md) | `bend guide effects` | *Effects in Bend* — writing custom foreign C and JS effects |
| [docs/base.bend](./docs/base.bend) | `bend base` | Full `Base` standard library definitions |
| [docs/base-types.bend](./docs/base-types.bend) | `bend base --types` | `Base` standard library type definitions |

## Guide Examples (Verbatim)

Every example below is taken verbatim from `bend guide` (and `bend guide effects`) with no changes.

| # | Section | Files | Run / Check |
| --- | --- | --- | --- |
| 01 | [Hello, World!](./GUIDE.md#hello-world) | [`examples/01_hello_world/hello.bend`](./examples/01_hello_world/hello.bend) | `bend examples/01_hello_world/hello.bend` |
| 02 | [Types and Functions](./GUIDE.md#types-and-functions) | [`examples/02_types_and_functions/main.bend`](./examples/02_types_and_functions/main.bend) | `bend examples/02_types_and_functions/main.bend` |
| 03 | [Closures](./GUIDE.md#closures) | [`examples/03_closures/main.bend`](./examples/03_closures/main.bend) | `bend examples/03_closures/main.bend` |
| 04 | [Recursion and Termination](./GUIDE.md#recursion-and-termination) | [`examples/04_recursion_and_termination/main.bend`](./examples/04_recursion_and_termination/main.bend) | `bend examples/04_recursion_and_termination/main.bend` |
| 05 | [Parallelism](./GUIDE.md#parallelism) | [`examples/05_parallelism/main.bend`](./examples/05_parallelism/main.bend) | `bend examples/05_parallelism/main.bend` |
| 06 | [Arrays](./GUIDE.md#arrays) | [`examples/06_arrays/main.bend`](./examples/06_arrays/main.bend) | `bend examples/06_arrays/main.bend` |
| 07 | [Quantities](./GUIDE.md#quantities) | [`examples/07_quantities/main.bend`](./examples/07_quantities/main.bend) | `bend examples/07_quantities/main.bend` |
| 08 | [Kinds](./GUIDE.md#kinds) | [`examples/08_kinds/main.bend`](./examples/08_kinds/main.bend) | `bend examples/08_kinds/main.bend` |
| 09 | [Templates](./GUIDE.md#templates) | [`examples/09_templates/main.bend`](./examples/09_templates/main.bend) | `bend examples/09_templates/main.bend` |
| 10 | [Laws and Proofs](./GUIDE.md#laws-and-proofs) | [`examples/10_laws_and_proofs/main.bend`](./examples/10_laws_and_proofs/main.bend) | `bend examples/10_laws_and_proofs/main.bend` |
| 11 | [IO and Concurrency](./GUIDE.md#io-and-concurrency) | [`examples/11_io_and_concurrency/main.bend`](./examples/11_io_and_concurrency/main.bend) | `bend examples/11_io_and_concurrency/main.bend` |
| 12 | [Monads](./GUIDE.md#monads) | [`examples/12_monads/main.bend`](./examples/12_monads/main.bend) | `bend examples/12_monads/main.bend` |
| 13 | [Apps](./GUIDE.md#apps) | [`examples/13_apps/main.bend`](./examples/13_apps/main.bend) | `bend examples/13_apps/main.bend` |
| 14 | [The Base Library](./GUIDE.md#the-base-library) | [`examples/14_base_library/main.bend`](./examples/14_base_library/main.bend) | `bend examples/14_base_library/main.bend` |
| 15 | [Modules](./GUIDE.md#modules) | [`examples/15_modules/math.bend`](./examples/15_modules/math.bend), [`examples/15_modules/main.bend`](./examples/15_modules/main.bend) | `bend examples/15_modules/main.bend` |
| 16 | [Effects (Complete Example)](./docs/effects.md#a-complete-example) | [`examples/16_effects/main.bend`](./examples/16_effects/main.bend), [`clock.c`](./examples/16_effects/clock.c), [`clock.js`](./examples/16_effects/clock.js) | `bend examples/16_effects/main.bend` |

## Checking All Examples

```bash
for f in examples/*/*.bend; do
  echo "=== $f ==="
  bend "$f" --check-only
done
```

> Note: `examples/16_effects/main.bend` defines a foreign effect (`Clock.now`), so `--check-only` reports that it depends on foreign code (`SOME PROOFS FAIL`) while still running cleanly with `bend examples/16_effects/main.bend`.
