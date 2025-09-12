#!/bin/bash

echo "🔄 Starting Load Phase..."

# Database credentials
DB_NAME="drugdb"
DB_USER="postgres"
TABLE_NAME="drugs"
CSV_PATH="../data/transformed_drugs.csv"
SQL_PATH="../sql/database.sql"

# Step 1: Create table
psql -U "$DB_USER" -d "$DB_NAME" -f "$SQL_PATH"

# Step 2: Load data
psql -U "$DB_USER" -d "$DB_NAME" -c "\copy $TABLE_NAME FROM '$CSV_PATH' WITH CSV HEADER"

echo "✅ Load Phase Completed: Data inserted into '$TABLE_NAME'"
