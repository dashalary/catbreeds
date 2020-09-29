class Breed 
    attr_accessor :name, :origin, :temperament, :description
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
















end