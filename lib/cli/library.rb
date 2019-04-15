class Library
  
  
attr_accessor :city, :name, :address, :zip,  :phone

@@all= []

def initialize(library_hash)
    library_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end
 def self.create_from_collection(library_array)
   library_array.each { |library| self.new(library)}
 end

def self.all 
  @@all 
end 
end 
