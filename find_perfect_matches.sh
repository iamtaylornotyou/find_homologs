#! /bin/bash
# usage: ./find_perfect_matches.sh <query file> <subject file> <output file>

blastn -query $1 -subject $2 -outfmt '6 sseq' -out $3

cat $3 | wc -l