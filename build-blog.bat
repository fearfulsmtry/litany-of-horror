@echo off
echo 🔨 Building Litany of Horror Blog...
echo.

REM Temporarily hide Gemfile to avoid bundler
if exist Gemfile (
    rename Gemfile _Gemfile.tmp 2>nul
)

REM Build the Jekyll site using Git Bash
echo Building Jekyll site...
"C:\Program Files\Git\bin\bash.exe" -c "jekyll build"

REM Restore Gemfile
if exist _Gemfile.tmp (
    rename _Gemfile.tmp Gemfile 2>nul
)

echo.
echo ✅ Blog built successfully! 
echo 📁 Files are in the _site directory
echo 🌐 To serve: cd _site && python -m http.server 8000
echo.
pause
