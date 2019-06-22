require 'nokogiri'
require 'open-uri'

url_base = 'https://live.bible.is/bible/PISWBT'

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

# kiai
(1..28).each do |i|
  single_page_extract("#{url_base}/MAT/#{i}")
end

(1..16).each do |i|
  single_page_extract("#{url_base}/MRK/#{i}")
end

(1..24).each do |i|
  single_page_extract("#{url_base}/LUK/#{i}")
end

(1..21).each do |i|
  single_page_extract("#{url_base}/JHN/#{i}")
end

(1..28).each do |i|
  single_page_extract("#{url_base}/ACT/#{i}")
end

(1..16).each do |i|
  single_page_extract("#{url_base}/ROM/#{i}")
end

(1..16).each do |i|
  single_page_extract("#{url_base}/1CO/#{i}")
end

(1..13).each do |i|
  single_page_extract("#{url_base}/2CO/#{i}")
end

(1..6).each do |i|
  single_page_extract("#{url_base}/GAL/#{i}")
end

(1..6).each do |i|
  single_page_extract("#{url_base}/EPH/#{i}")
end

(1..4).each do |i|
  single_page_extract("#{url_base}/PHP/#{i}")
end

(1..4).each do |i|
  single_page_extract("#{url_base}/COL/#{i}")
end

(1..5).each do |i|
  single_page_extract("#{url_base}/1TH/#{i}")
end

(1..3).each do |i|
  single_page_extract("#{url_base}/2TH/#{i}")
end

(1..6).each do |i|
  single_page_extract("#{url_base}/1TI/#{i}")
end

(1..4).each do |i|
  single_page_extract("#{url_base}/2TI/#{i}")
end

(1..3).each do |i|
  single_page_extract("#{url_base}/TIT/#{i}")
end

(1..13).each do |i|
  single_page_extract("#{url_base}/HEB/#{i}")
end

(1..5).each do |i|
  single_page_extract("#{url_base}/JAS/#{i}")
end

(1..5).each do |i|
  single_page_extract("#{url_base}/1PE/#{i}")
end

(1..3).each do |i|
  single_page_extract("#{url_base}/2PE/#{i}")
end

(1..5).each do |i|
  single_page_extract("#{url_base}/1JN/#{i}")
end

(1..1).each do |i|
  single_page_extract("#{url_base}/2JN/#{i}")
end

(1..1).each do |i|
  single_page_extract("#{url_base}/3JN/#{i}")
end

(1..1).each do |i|
  single_page_extract("#{url_base}/JUD/#{i}")
end

(1..22).each do |i|
  single_page_extract("#{url_base}/REV/#{i}")
end
