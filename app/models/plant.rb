class Plant < ApplicationRecord
    has_and_belongs_to_many :gardens
    has_many :users, through: :gardens


    def self.results_mapper(results)
        results.map do |r|
            mapped_results = {}
            mapped_results[:common_name] = r["common_name"]
            mapped_results[:scientific_name] = r["scientific_name"]
            mapped_results[:id] = r["id"]
            mapped_results
        end
    end

    def self.find_or_create(api_id)
    end
end
