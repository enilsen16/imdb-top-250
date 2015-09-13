require "nokogiri"
require 'open-uri'

# Sorted by ranking
doc = Nokogiri::HTML(open('http://akas.imdb.com/chart/top/'))

puts "Top 250 Movies for: #{Time.now}\n\n"
puts doc.xpath('//td//a').search("a[@href^='/title/tt']" && "a[@title]").children
