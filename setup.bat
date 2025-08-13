@echo off
echo.
echo ========================================
echo   NextGenITHub Website Setup Script
echo ========================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed. Please install Node.js first.
    echo Download from: https://nodejs.org/
    pause
    exit /b 1
)

REM Check if Git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed. Please install Git first.
    echo Download from: https://git-scm.com/
    pause
    exit /b 1
)

echo [1/6] Checking dependencies... ✓
echo.

REM Initialize Git repository if not already initialized
if not exist .git (
    echo [2/6] Initializing Git repository...
    git init
    echo ✓ Git repository initialized
) else (
    echo [2/6] Git repository already exists ✓
)
echo.

REM Create .gitignore file
echo [3/6] Creating .gitignore file...
(
echo node_modules/
echo .DS_Store
echo Thumbs.db
echo .env
echo .env.local
echo .env.production
echo dist/
echo build/
echo *.log
echo coverage/
echo .nyc_output/
echo .cache/
echo temp/
echo .tmp/
) > .gitignore
echo ✓ .gitignore created
echo.

REM Install live-server for local development
echo [4/6] Installing development server...
npm install -g live-server 2>nul
if %errorlevel% neq 0 (
    echo Note: Could not install live-server globally. You may need administrator privileges.
    echo You can still open index.html directly in your browser.
) else (
    echo ✓ Live-server installed
)
echo.

REM Add all files to Git
echo [5/6] Adding files to Git...
git add .
git commit -m "Initial commit: NextGenITHub website" 2>nul
echo ✓ Files committed to Git
echo.

echo [6/6] Setup complete! ✓
echo.
echo ========================================
echo           NEXT STEPS
echo ========================================
echo.
echo 1. DEVELOPMENT:
echo    - Open index.html in your browser, or
echo    - Run: live-server
echo    - Edit files and refresh browser to see changes
echo.
echo 2. GITHUB SETUP:
echo    - Create repository on GitHub: https://github.com/new
echo    - Run: git remote add origin YOUR_GITHUB_URL
echo    - Run: git push -u origin main
echo.
echo 3. VERCEL DEPLOYMENT:
echo    - Visit: https://vercel.com
echo    - Import your GitHub repository
echo    - Deploy automatically
echo.
echo 4. DOMAIN SETUP:
echo    - Configure custom domain in Vercel
echo    - Update DNS settings in GoDaddy
echo.
echo 5. CUSTOMIZE CONTENT:
echo    - Update company information in index.html
echo    - Replace placeholder images in assets/
echo    - Modify colors and styling in css/style.css
echo.
echo ========================================
echo.
echo Press any key to open the website...
pause >nul

REM Try to open the website
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe" "index.html"
) else if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    start "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "index.html"
) else if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
    start "Edge" "C:\Program Files\Microsoft\Edge\Application\msedge.exe" "index.html"
) else (
    start index.html
)

echo.
echo Website opened in your default browser!
echo.
pause
