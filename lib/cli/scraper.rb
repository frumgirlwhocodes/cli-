
class Scraper 

 def get_page 
  html=open("https://publiclibraries.com/state/new-york/")
  doc=Nokogiri::HTML(html)
end 
 def scrape_page 
   library_array=[]
  get_page.css("table#libraries tr").each do |lib|
    
    hash={} 
    hash[:city]=
    hash[:name]=
   hash[:address]=
   hash[:zip]=
  hash[:phone]=
    binding.pry 
  end 
  library_array << hash 
 end 
end 
# hash[:address]=#lib.css("tr")[1].children[2].text
   # hash[:zip]=#lib.css("tr")[1].children[3].text
  # hash[:phone]=#lib.css("tr")[1].children[4].text