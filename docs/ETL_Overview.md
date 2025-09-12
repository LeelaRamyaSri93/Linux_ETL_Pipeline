# 🧪 ETL Pipeline Overview Drug Label Dataset

This project demonstrates a beginner friendly ETL pipeline using shell scripting, Python, and PostgreSQL. It processes a Kaggle dataset on drug labels and side effects through three distinct phases:

---

## 🔹 Extraction
- Source: Kaggle dataset
- Script: `extract.sh`
- Output: `extracted_drugs.csv`

---

## 🔹 Transformation
- Script: `transform.py`
- Output: `transformed_drugs.csv`

---

## 🔹 Load
- Scripts: `load.sh`, `database.sql`
- Target: PostgreSQL (`drugdb → drugs` table)

---

Each phase is documented separately:
- [Extract Phase](extract_phase.md)
- [Transform Phase](transform_phase.md)
- [Load Phase](load_phase.md)

For visual reference, see:  
📊 `workflow_diagram.png`
