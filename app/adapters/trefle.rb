module Trefle

    class Adapter

        API_KEY = ENV["API_KEY"]
        BASE_URL = "https://trefle.io/"

        def self.get_plant_by_id(id)
            url = BASE_URL + "/api/plants/#{id}"
            return HTTParty.get(
                'https://trefle.io/api/plants/#{id}'
                query: {
                    "token": API_KEY
                }
            )
        end

        def self.search_plant_by_name(name)
            url = BASE_URL + "/api/plants?q=#{name}"
            return HTTParty.get(
                'https://trefle.io/api/plants/#{id}'
                query: {
                    "token": API_KEY
                }
            )
        end

        def self.search(plant)
            plants = search_plant_by_name(plant)
            @results = Plant.results_mapper(plants)
        end
        
    end

end