#!/bin/bash
title=$1
if [ -z "$title" ]; then echo "ব্যবহার: ./newpost.sh \"পোস্টের শিরোনাম\""; exit; fi
file=$(echo $title | tr ' ' '-' | tr -d '?"')
date=$(date +"%b %d, %Y")
cat > posts/$file.html << EOF
<!DOCTYPE html><html lang="bn"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>$title</title><link rel="stylesheet" href="../style.css"></head><body><nav><b><a href="../index.html" style="text-decoration:none;color:#111">← Back</a></b></nav><div class="container"><div class="meta">$date</div><h1>$title</h1><img src="https://images.unsplash.com/photo-1518770660439-4636190af475?w=800" style="width:100%;border-radius:12px;margin:20px 0"><p>এখানে তোমার লেখা লিখো...</p></div></body></html>
EOF
echo "✅ পোস্ট তৈরি হয়েছে: posts/$file.html"
