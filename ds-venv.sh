echo "Installing Python venv package ..."
PYTHON_V=$(python3 --version | cut -s -d " " -f 2 | cut -s -d "." -f 1-2)

sudo apt install python$PYTHON_V-venv

echo "Install finished."

# Create venv
read -p "Enter venv path (. and ~ are valid!): " VENV_PATH
read -p "Enter venv name (no spaces or special charcters!): " VENV_NAME
python3 -m venv $VENV_PATH/$VENV_NAME

echo "Installing libraries ... "

# Install DS libraries
$VENV_PATH/$VENV_NAME/bin/pip install numpy pandas scikit-learn matplotlib seaborn tensorflow keras torch scipy
