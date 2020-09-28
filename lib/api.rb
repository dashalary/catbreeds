class API 

    def self.get_breeds
        response = HTTParty.get("https://api.thecatapi.com/v1/breeds")
        breeds = JSON.parse(response.body)["breeds"]
        breeds.each do |b|
        Breed.new(name: b["name"], temperament: b["temperament"], description: b["description"])
        end
    end

    def self.get_breed(breed)

    end





end