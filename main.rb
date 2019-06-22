require 'nokogiri'
require 'open-uri'

url_base = 'https://live.bible.is/bible/PISWBT/'

def single_page_extract(url)
  page = Nokogiri::HTML.parse(open(url))
  title = page.xpath("//meta[@name='twitter:title']/@content").to_s

  verses = page.xpath("//div[@class='chapter justify']/span/span")

  File.open("output/#{title}.txt", 'w') do |f|
    verses.each do |v|
      f.puts(v.inner_text)
    end
  end
end

single_page_extract('https://live.bible.is/bible/PISWBT/MAT/1')
