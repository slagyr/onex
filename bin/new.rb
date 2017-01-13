#!/usr/bin/env ruby -w

puts "What's the title?"
title = gets.strip

slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
date_str = Time.now.strftime("%Y-%m-%d")

post = <<END
---
layout: post
title:  "#{title}"
date:   #{date_str} 
categories: onex
---

Today was a great day!
END

post_name = "#{date_str}-#{slug}.md"
post_filename = "_posts/#{post_name}"
puts "Creating post: #{File::absolute_path(post_filename)}"
File.open(post_filename, "w") do |f|
  f.write(post)
end

img_filename = "img/#{date_str}"
puts "Creating img dir: #{File::absolute_path(img_filename)}"
Dir::mkdir(img_filename)







