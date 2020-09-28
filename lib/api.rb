class API 

    def self.get_breeds
    response = HTTParty.get("https://api.thecatapi.com/v1/breeds")
        # headers: {"x-api-key" => "b3ae8931-fd14-4c56-8665-148ef5aedc66"
        # })
        breeds = response["breeds"]


    # breeds = JSON.parse(response)["breeds"].each do |c|
    #     Breed.new(name: c["name"])
  




    end


end