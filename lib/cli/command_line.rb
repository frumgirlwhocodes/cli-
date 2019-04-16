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
    puts "What number library would you like to see more information on?"
    
    more_info
    
  puts ""
    puts "Would you like to see another restaurant? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Have a great day!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
    end
  end
    
    
     def more_info
     input = gets.strip
      libraries = Library.all.sort_by {|library| library.name}
    libraries.each.with_index(1) do |library, index|
      if index  == input.to_i
        puts " The city, address, zipcode and telephone number for this library is: #{library.city}, #{library.address}, #{library.zip}, #{library.phone} "
     end    
    end 
   
    def list_libraries
    libraries= Library.all.sort_by { |library| library.name}
    libraries.each.with_index(1) do |library, index|
    puts "#{index}. #{library.name} "
  end
end 
end 
end 
