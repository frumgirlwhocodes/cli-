class CommandLineInterface

 def call 
   Scraper.new.create_libraries
    puts "Welcome to the library finder!"
    puts "I would love to help you find the library you are looking for and any other information you may need"
    puts "Here is a list of all the libraries"
    start 
  end 
   def start 
     list_libraries
     puts ""
    puts "What number library would you like to see?"
    
    end
  

  
  def list_libraries
    Library.all.each.with_index(1) do |library, index|
    puts "#{index}. #{library.name} "
  end
end 
end 
