@echo off
echo 🔨 Building Litany of Horror Blog...
echo.

REM Add Ruby to PATH
set PATH=%PATH%;C:\Ruby34-x64\bin

REM Temporarily hide Gemfile to avoid bundler
if exist Gemfile (
    rename Gemfile _Gemfile.tmp 2>nul
)

REM Build the Jekyll site
echo Building Jekyll site...
jekyll build

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
