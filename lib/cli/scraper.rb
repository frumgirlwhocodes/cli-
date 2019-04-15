
class Scraper 

 def get_page 
  html=open("https://publiclibraries.com/state/new-york/")
  doc=Nokogiri::HTML(html)
end 
 def scrape_page 
   library_array=[]
  get_page.css("table#libraries tr").each do |lib|
    hash={} 
    hash[:city]= lib.children[0].text unless lib.css("td").empty?
    hash[:name]= lib.children[1].text unless lib.css("td").empty?
   hash[:address]= lib.children[2].text unless lib.css("td").empty?
   hash[:zip]= lib.children[3].text unless lib.css("td").empty?
  hash[:phone]= lib.children[4].text unless lib.css("td").empty?
  library_array << hash 
end 
library_array
binding.pry
end 


def create_libraries
scrape_page.each do |library_hash| 
  Library.new(library_hash)
end 
end 
end 
