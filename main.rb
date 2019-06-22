require 'nokogiri'
require 'open-uri'

url = 'https://live.bible.is/bible/PISWBT/MAT/1'

page = Nokogiri::HTML.parse(open(url))

verses = page.xpath("//div[@class='chapter justify']/span/span")

puts verses.inner_text
