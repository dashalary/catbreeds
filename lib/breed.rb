class Breed 
    attr_accessor :name, :temperament, :description
    @@all = []

    def initialize(attr_hash)
       attr_hash.each do |k, v|
        self.send("#{k}=", v) 
        end 
    save 
    end

    def self.all
        @@all 
    end

    def save 
        @@all << self
      end 

    def self.find_by_name(name)
        self.all.select do |breed|
        breed.name == name 
        end
    end

    def self.get_breeds
       API.get_breeds
        all
      end

















end