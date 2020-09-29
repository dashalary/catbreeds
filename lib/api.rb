class API 

    def self.get_breeds
        response = HTTParty.get("https://api.thecatapi.com/v1/breeds")
        breeds = JSON.parse(response.body)
        breeds.each do |b|
        Breed.new(name: b["name"], temperament: b["temperament"], description: b["description"])
        end
    end

    # def self.get_breed(breed)
    #     response = HTTParty.get("https://api.thecatapi.com/search?breed_id=#{breed.id})
    #     breed = JSON.parse(response.body)
    #     breed
    # end





end