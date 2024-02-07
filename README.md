# acari
🏡 Quickly fetching the underlying CPU architecture.

## Target output
Acari only supports `amd64`, `armv8`, `rv64g` and their later revisions.

### CISC
- `i386`: A 32-bit only CPU architecture from Intel.
- `amd64`: A 64-bit CPU architecture from AMD.
  - `amd64v2`: `amd64` with extensions like SSE3.
  - `amd64v3`: `amd64v2` with extensions like AVX and AVX2.


### RISC
<!-- - `arm32`: 32-bit RISC architecture from ARM. This indicates `armv7`. -->
- `arm64`: 64-bit RISC architecture from ARM. This indicates `armv8`.
- `armv9`: An updated revision of `arm64`.
- `rv64g`: A relatively new libre and open RISC architecture. [Read more](https://riscv.org).