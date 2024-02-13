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
  - `arm64_1`: Arm v8.1.
  - `arm64_2`: Arm v8.2.
  - `arm64_3`: Arm v8.3.
  - `arm64_4`: Arm v8.4.
- `armv9`: An updated revision of `arm64`.
- `riscv64`: A relatively new libre and open RISC architecture. [Read more](https://riscv.org).

### Credits
* [From a diary of AArch64 porter — Arm CPU features table](https://marcin.juszkiewicz.com.pl/2022/11/08/from-a-diary-of-aarch64-porter-arm-cpu-features-table/)