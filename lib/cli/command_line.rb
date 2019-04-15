class CommandLineInterface

 def call 
    input=" "
    puts "Welcome to the library finder!"
    puts "I would love to help you find the library you are looking for and any other information you may need"
    puts "To list all the libraries, enter 'list libraries'"
    puts "To list all the libraries by city, enter 'list by city'"
    puts "To get the location of a library, enter 'get location' "
    puts "To get the zip code of a library, enter 'get zip code'"
    puts "To get the phone number of a library, enter 'get phone number'"
    while input != "exit"
      input=gets.strip
      case input 
      when "list libraries"
        list_libraries 
    when "list by city"
      list_by_city
  when "get location"
     get_location 
  when "get zipcode"
   get_zipcode
   when "get phone number"
     get_phone_number 
end 
end 
end 
  
  def list_libraries
 libraries = Library.all.sort_by {|library| library.name}
    libraries.each_with_index do |library, index| 
    puts "#{index + 1 }. #{library.city}, #{library.name}, #{library.location}, #{library.zip}, #{library.phone}"
  end 
end 
def list_by_city 
  
  
end 
end 