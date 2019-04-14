class CommandLineInterface

 def call 
    input=" "
    puts "Welcome to the library finder!"
    puts "I would love to help you find the library you are looking for"
    puts "To list all the libraries by name, enter 'list libraries'"
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
    puts "#{index + 1 }. #{library.name}"
  end 
end 
end 