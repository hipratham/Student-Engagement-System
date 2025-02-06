@echo off
echo Setting up CV Generator Application...

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Python is not installed! Please install Python 3.8 or higher from https://www.python.org/downloads/
    pause
    exit /b
)

REM Install required packages
echo Installing required packages...
python -m pip install -r requirements.txt

REM Create .env file if it doesn't exist
if not exist .env (
    echo Creating .env file...
    echo GROQ_API_KEY=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> .env
    echo FLASK_ENV=production>> .env
    echo SECRET_KEY=your-super-secret-key>> .env
)

echo Setup completed successfully!
echo To start the application, run start.bat
pause
