#!/bin/bash
echo "🔨 Building Litany of Horror Blog..."
echo

# Temporarily hide Gemfile to avoid bundler
if [ -f "Gemfile" ]; then
    mv Gemfile _Gemfile.tmp 2>/dev/null
fi

# Build the Jekyll site
echo "Building Jekyll site..."
jekyll build

# Restore Gemfile
if [ -f "_Gemfile.tmp" ]; then
    mv _Gemfile.tmp Gemfile 2>/dev/null
fi

echo
echo "✅ Blog built successfully!" 
echo "📁 Files are in the _site directory"
echo "🌐 To serve locally: jekyll serve"
echo
