#!/usr/bin/env ruby
# Matching a given pattern
puts ARGV[0].scan(/\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(',')
