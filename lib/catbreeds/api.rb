class CatBreeds::API 
require 'pry'


    def self.get_breeds
    resp = HTTParty.get("https://api.thecatapi.com/v1/breeds", {
        headers: {"Authorization" => "#{ENV['API_KEY']}"},
    })
    binding.pry
    breeds = resp["breeds"]
    CatBreeds::Breed.new_from_collection(breeds)
    end









end