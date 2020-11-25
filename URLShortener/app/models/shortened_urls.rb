class ShortenedUrls < ApplicationRecord
    validates :long_url, null: false
    validates :short_urls, null: false


    def self.random_code
        random = SecureRandom.urlsafe_base64
        
        while ShortenedUrls.exists?(:short_urls => random)
            random = SecureRandom.urlsafe_base64
        end

        random
    end

    

end