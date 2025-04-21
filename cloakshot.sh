#!/bin/bash

# Usage: ./cloakshot.sh /path/to/images/

INPUT_DIR="$1"
OUTDIR="$HOME/tor_uploads"

mkdir -p "$OUTDIR"

if [ ! -d "$INPUT_DIR" ]; then
  echo "[-] Error: '$INPUT_DIR' is not a directory"
  exit 1
fi

echo "[*] Scrubbing images in: $INPUT_DIR"
echo "[*] Output directory: $OUTDIR"

count=0
for img in "$INPUT_DIR"/*.{jpg,JPG,jpeg,JPEG,png,PNG}; do
  [ -e "$img" ] || continue  # skip if no matches
  TIMESTAMP=$(date +%s%N)
  EXT="${img##*.}"
  OUTFILE="$OUTDIR/img_$TIMESTAMP.$EXT"

  # Scrub metadata
  convert "$img" -strip "$OUTFILE"
  chmod 644 "$OUTFILE"

  echo "[+] Cleaned: $(basename "$img") → $(basename "$OUTFILE")"
  ((count++))
done

echo "[✓] Done. $count images cleaned and moved to $OUTDIR"
