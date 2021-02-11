class Plant < ApplicationRecord
    has_and_belongs_to_many :gardens
    has_many :users, through: :gardens


    def self.results_mapper(results)
        all_mapped_results = results["data"].map do |p|
            mapped_results = {}
            mapped_results[:common_name] = p["common_name"]
            mapped_results[:scientific_name] = p["scientific_name"] 
            mapped_results[:id] = p["id"]
            mapped_results
        end 
        return all_mapped_results
    end

    def self.find_or_create(api_id)
    end

    def self.new_from_hash(hash)
        p = Plant.new
        p.common_name = hash[:common_name]
        p.scientific_name = hash[:scientific_name]
        p.api_id = hash[:id]
        p
    end
end
