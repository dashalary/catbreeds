class Breed 
attr_accessor :name, 
@@all = []

    def initialize(name:nil)
        @@all << self
    end 

    def self.all
        @@all 
    end

    def self.get_breeds
       API.get_breeds
        @@all
      end

















end