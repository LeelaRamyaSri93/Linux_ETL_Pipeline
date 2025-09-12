# 🔹 Load Phase – Drug Label ETL Pipeline

This phase loads the transformed dataset into a PostgreSQL database using SQL and shell scripting.

---

## 🧩 Load Workflow

- Created `database.sql` and `load.sh` in the `scripts/` folder using `nano`

- Set executable permissions for `load.sh`:
  ```bash
  cd ~/Linux_ETL_Pipeline/scripts  
  chmod +x load.sh
- Installed PostgreSQL and its extensions:
  ```bash
  sudo apt install postgresql postgresql-contrib
- Installed PostgreSQL and its extensions:
  ```bash
  sudo apt install postgresql postgresql-contrib
- Started PostgreSQL server:
  ```bash
  sudo systemctl start postgresql
- Created database drugdb:
  ```bash
  sudo -u postgres psql
  create database drugdb;
- Ran the load script to insert data:
  ```bash
  sudo -u postgres psql -d drugdb
---
## 📄 Output Files

| File Name        | Description                              |
|------------------|------------------------------------------|
| `load.sh`        | Shell script to load CSV into PostgreSQL |
| `database.sql`   | SQL script for schema and table creation |
---
## ✅ Status
Load complete. Data is now stored in the drugdb PostgreSQL database and ready for querying and further data analaysis.





  
