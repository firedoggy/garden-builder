class Plant < ApplicationRecord
    has_and_belongs_to_many :gardens
    has_many :users, through: :gardens

    def self.find_or_create(api_id)
    end
end
