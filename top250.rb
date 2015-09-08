require "nokogiri"
require 'open-uri'

doc = Nokogiri::HTML(open('http://akas.imdb.com/chart/top/'))

puts doc.xpath('//td//a').search("a[@href^='/title/tt']" && "a[@title]").children
