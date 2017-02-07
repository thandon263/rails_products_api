class User < ApplicationRecord
    has_many :music

    # Assign an API Key on create
    before_create do |user|
        user.api_key = user.generate_api_key
    end

    # Generating the api_key
    def generate_api_key
        loop do
            token = SecureRandom.base64.tr('+/=', 'Qrt')
            break token unless User.exists?(api_key: token)
        end
    end
end
