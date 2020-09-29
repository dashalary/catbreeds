class API 

    def self.get_breeds
        response = HTTParty.get("https://api.thecatapi.com/v1/breeds")
        breeds = JSON.parse(response.body)
        breeds.each do |b|
        Breed.new(name: b["name"], origin: b["origin"], temperament: b["temperament"], description: b["description"])
        end
    end

end