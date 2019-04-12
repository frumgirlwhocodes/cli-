class CommandLineInterface

 def call 
    input=" "
    puts "Welcome to the library finder!"
    puts "I would love to help you find the library you are looking for"
    puts "To list all the libraries names, enter 'list libraries'"
    while input != "exit"
      input=gets.strip
      case input 
      when "list libraries"
        list_libraries 
end 
end 
end 
  
  #def list_libraries 
#  end 
end 