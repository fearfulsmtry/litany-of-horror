@echo off
echo 🎭 Starting Litany of Horror Blog...
echo.

REM Add Ruby to PATH
set PATH=%PATH%;C:\Ruby34-x64\bin

REM Temporarily hide Gemfile to avoid bundler
if exist Gemfile (
    rename Gemfile _Gemfile.tmp 2>nul
)

REM Build the Jekyll site
echo 🔨 Building Jekyll site...
jekyll build

REM Restore Gemfile
if exist _Gemfile.tmp (
    rename _Gemfile.tmp Gemfile 2>nul
)

REM Start Python server
echo 🌐 Starting web server at http://localhost:8000
echo 📖 Your horror blog is ready!
echo.
echo ⚠️  Press Ctrl+C to stop the server
cd _site
python -m http.server 8000
