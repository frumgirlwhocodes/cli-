class CommandLineInterface

 def call 
    input=" "
    puts "Welcome to the library finder!"
    puts "I would love to help you find the library you are looking for"
    puts "To list all the libraries, enter 'list libraries'"
    puts "To list all the Libraries by city, enter 'list by city'"
    puts "To get the location of each library, enter 'get location' "
    puts "To get the zip code of each library, enter 'get zip code'"
    puts "To get the phone number of each library, enter 'get phone number'"
    while input != "exit"
      input=gets.strip
      case input 
      when "list libraries"
        list_libraries 
end 
end 
end 
  
  def list_libraries
 libraries = Library.all.sort_by {|library| library.name}
    libraries.each_with_index do |library, index| 
    puts "#{index + 1 }. #{library.city}, #{library.name}, #{library.location}, #{library.zip}, #{library.phone}"
  end 
end 
end 