class Breed 
attr_accessor :name, :temperament, :description
@@all = []

    def initialize(name:nil, temperament:nil, description:nil)
        @name = name
        @temperament = temperament
        @description = description
        save
    end 

    def self.all
        @@all 
    end

    def save 
        @@all << self
      end 

    #   def attrs_from_hash(attributes)
    #     attrs.each do |k, v|
    #         send("#{k}=", v)
    #     end
    #   end

    def self.get_breeds
       API.get_breeds
        all
      end

















end