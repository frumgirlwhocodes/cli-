
class Scraper 

 def get_page 
  html=open("https://publiclibraries.com/state/new-york/")
  doc=Nokogiri::HTML(html)
  list=doc.css("table#libraries tbody tr").each 
    binding.pry 
  end 
 

end 