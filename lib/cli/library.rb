class Library
  
  
attr_accessor :name,:city, :location, :zip,  :phone

@@all 

def initialize(library_hash)
    library_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

def self.all 
  @@all 
end 
end 
