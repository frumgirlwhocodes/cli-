
class Scraper 

 def get_page 
  html=open(https://nls.us.baesystems.com/nldp/pkg_nls.addr_search_res)
  doc=Nokogir::HTML(html)
  binding.pry 
end 
end 