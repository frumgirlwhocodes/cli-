
class Scraper 

 def get_page 
  html=open("https://publiclibraries.com/state/new-york/")
  doc=Nokogiri::HTML(html)
end 
 def scrape_page 
   students_array=[]
  get_page.css("table#libraries tbody tr").each 
    
    hash={}
    binding.pry 
 end 

end 