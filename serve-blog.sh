#!/bin/bash
echo "🌐 Starting Litany of Horror Blog Server..."
echo

# Temporarily hide Gemfile to avoid bundler
if [ -f "Gemfile" ]; then
    mv Gemfile _Gemfile.tmp 2>/dev/null
fi

# Start the Jekyll server
echo "Starting Jekyll server at http://localhost:4000"
echo "Press Ctrl+C to stop"
echo
jekyll serve --host 127.0.0.1 --port 4000

# Restore Gemfile when server stops
if [ -f "_Gemfile.tmp" ]; then
    mv _Gemfile.tmp Gemfile 2>/dev/null
fi
