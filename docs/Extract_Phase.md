# 🔹Extract Phase – Drug Label ETL Pipeline

This phase initiates the ETL pipeline by downloading and preparing the raw dataset for transformation.

---

## 📦 Dataset Source

- **Platform**: Kaggle
- **File Downloaded**:
  - `drug-labels-and-side-effects-dataset-1400-records.zip`
---

## 🛠️ Setup & Download

1. **Created `.kaggle/` folder** to store API token  
   ```bash
   mkdir -p ~/.kaggle
   chmod 600 ~/.kaggle/kaggle.json
2. **Installed Kaggle CLI**
   ```bash
   sudo apt update
   sudo apt install python3-pip pipx unzip
   pipx install kaggle
   pipx ensurepath
3. **Downloaded datasets via Kaggle API**
   ```bash
   kaggle datasets download -d pratyushpuri/drug-labels-and-side-effects-dataset-1400-records
4. **Unzipped files into `.data/` folder**
   ```bash
   unzip data/drug-labels-and-side-effects-dataset-1400-records.zip -d data/
5. **Verified headers of all CSV file**
   ```bash
   head -n 1 data/*.csv
---

## 🧪 Extraction Script
- Created extract.sh using nano
- Reads realistic_drug_labels_side_effects.csv
- Extracts required fields (e.g., drug name, side effects)
- Saves output as extracted_drugs.csv
- Logs process to extract.log
- Made script executable and ran it
  ```bash
  chmod +x extract.sh
  ./extract.sh
- Verified extracted file and logs
  ```bash
  head -n 5 data/extracted_drugs.csv
  cat scripts/extract.log
---

## 📄 Output Files
| File Name              | Description                          |
|------------------------|--------------------------------------|
| `extracted_drugs.csv`  | Cleaned dataset with selected fields |
| `extract.log`          | Log file capturing script execution  |
---

## ✅ Status
Extraction complete. Data is now ready for transformation via transform.py.
