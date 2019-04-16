class CommandLineInterface

 def call 
   Scraper.new.create_libraries
   list
   puts "Above is a list of all the libraries"
    puts "Welcome to the library finder!"
    puts "I would love to help you find the library you are looking for and any other information you may need"
    puts 
    start 
  end 
   def start 
     
     puts ""
    puts "What number library would you like to see more information on?"
    
    more_info
    
  puts ""
    puts "Would you like to select another library from the list? Enter Y or N"

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
   def list
    #libraries= Library.all.sort_by { |library| library.name}
    Library.all.each.with_index(1) do |library, index|
    puts "#{index}. #{library.name} "
  end
end 
end 
    
    
     def more_info
     input = gets.strip.to_i
    Library.all.each.with_index(1) do |library, index|
      if index  == input
        puts " The city, address, zipcode and telephone number for this library is: #{library.city}, #{library.address}, #{library.zip}, #{library.phone} "
     end    
    end 
end 
