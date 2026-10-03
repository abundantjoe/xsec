#!/usr/bin/env bash
# Reproduce the PHerc0268 cross-section figure from the public bucket (level-1 CT, ~1-3 min on a laptop).
set -e; cd "$(dirname "$0")"
python -m xsec.xsections results/PHerc0268_seed98_normalgrid_tifxyz \
  s3://vesuvius-challenge-open-data/PHerc0268/volumes/20251110183117-8.640um-1.2m-116keV-masked.zarr out/PHerc0268_seed98 --level 1
python -m xsec.radial_gate results/PHerc0268_seed98_normalgrid_tifxyz 6154.6 6219.5
echo "figure: out/PHerc0268_seed98_xsec.png"
