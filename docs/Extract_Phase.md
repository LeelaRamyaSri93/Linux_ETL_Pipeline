## 🔹 Extract Phase

- Created hidden `.kaggle/` folder inside home directory using `-p` flag to avoid errors if the folder already exists, and set file permissions so only the user can read/write the token:  
  ```bash
  mkdir -p ~/.kaggle  
  chmod 600 ~/.kaggle/kaggle.json
  sudo apt update  
sudo apt install python3-pip pipx unzip  
pipx install kaggle  
pipx ensurepath
