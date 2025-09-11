#!/bin/bash

INPUT_FILE="../data/realistic_drug_labels_side_effects.csv"
OUTPUT_FILE="../data/extracted_drugs.csv"
LOG_FILE="extract.log"

touch "$LOG_FILE"

if [ -f "$INPUT_FILE" ]; then
    csvcut -c drug_name,drug_class,indications,side_effects,side_effect_severity,approval_status "$INPUT_FILE" > "$OUTPUT_FILE"
    echo "$(date): SUCCESS - Extracted columns to $OUTPUT_FILE" >> "$LOG_FILE"
else
    echo "$(date): ERROR - $INPUT_FILE not found." >> "$LOG_FILE"
fi
