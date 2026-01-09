# paco-qpf

Integration layer between:
- **`paco-lean`**: generic parametrized coinduction infrastructure
- **`QpfTypes`**: QPF-based (co)datatype framework and concrete structures

This package hosts bridge proofs that depend on both sides (e.g. paco-based
results about QPF/ITree relations).

## Contents (examples)

- `PacoQpf.ITree.Bisim`: paco-based proofs for `Qpf.ITree.Bisim`.

## Dependencies

- `paco-lean`
- `QpfTypes`

## Non-goals

- Defining QPF data types or macros (belongs in QpfTypes)
- Providing generic paco infrastructure (belongs in paco-lean)
