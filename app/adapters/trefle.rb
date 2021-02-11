module Trefle

    class Adapter

        API_KEY = ENV["API_KEY"]
        BASE_URL = "https://trefle.io"

        def self.get_plant_by_id(id)
            url = BASE_URL + "/api/v1/species/#{id}"
            r = HTTParty.get(
                url, 
                query: {
                    "token": "_dajm-QtoI4zROMErep9-jnnt7rKM8Of8hZv50EXYrw" 
                }
            )
            return r
        end

        def self.search_plant_by_name(name)
            url = BASE_URL + "/api/v1/species/search"
            r = HTTParty.get(
                url, 
                query: {
                    "q": name,
                    "token": "_dajm-QtoI4zROMErep9-jnnt7rKM8Of8hZv50EXYrw" 
                }
            )
            return r
        end

        def self.search(plant)
            plants = Trefle::Adapter.search_plant_by_name(plant)
            @results = Plant.results_mapper(plants)
        end
        
    end

end