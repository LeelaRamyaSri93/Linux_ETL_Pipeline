# 🔹 Transform Phase – Drug Label ETL Pipeline

This phase processes the extracted CSV file using Python and pandas to clean, format, and prepare the data for loading into a database.

---

## 🧠 Transformation Workflow

- Created `transform.py` using `nano`  
  Script reads `extracted_drugs.csv`, applies cleaning logic, and writes output to `transformed_drugs.csv`

- Created a virtual environment in the root folder to install required libraries like `pandas`:  
  ```bash
  python3 -m venv venv
- Activated the virtual environment:
  ```bash
  source venv/bin/activate
- Installed dependencies inside the virtual environment (if needed):
  ```bash
  pip install pandas
- Run the transformation script:
  ```bash
  python scripts/transform.py
---
## 📄 Output Files

| File Name                | Description                              |
|--------------------------|------------------------------------------|
| `transform.py`           | Python script for data transformation     |
| `transformed_drugs.csv`  | Cleaned and formatted dataset for loading |
---
## ✅ Status
Transformation complete. Data is now ready for loading into PostgreSQL via load.sh.

