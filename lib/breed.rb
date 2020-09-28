class Breed 
attr_accessor :name, :temperament, :description
@@all = []

    def initialize(name:nil, temperament:nil, description:nil)
        @@all << self
        @name = name 
        @temperament = temperament
        @description = description
    end 

    def self.all
        @@all 
    end

    def self.get_breeds
       API.get_breeds
        @@all
      end

















end