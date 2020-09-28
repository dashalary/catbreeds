class CatBreeds::API 



    def self.get_breeds
    resp = HTTParty.get("https://api.thecatapi.com/v1/breeds", {
        headers: {"Authorization" => "#{ENV['API_KEY']}"},
    })
    breeds = resp["breeds"]
    CatBreeds::Breed.new_from_collection(breeds)
    end









end