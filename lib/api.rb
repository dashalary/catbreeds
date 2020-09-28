class API 

    def self.get_breeds
    response = HTTParty.get("https://api.thecatapi.com/v1/breeds", {
        headers: {"Authorization" => "#{ENV['API_KEY']}"},
    })

    breeds = JSON.parse(response)["breeds"].each do |c|
        Breed.new
  




    end


end