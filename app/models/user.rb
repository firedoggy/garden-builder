class User < ApplicationRecord
    has_many :gardens
    has_many :plants, through: :gardens

    validates :email,
    format: { with: /\A(\S+)@(.+)\.(\S+)\z/, message: "Email invalid"  },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }  
    has_secure_password
end
