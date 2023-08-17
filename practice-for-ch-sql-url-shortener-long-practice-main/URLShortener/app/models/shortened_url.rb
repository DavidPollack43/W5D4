class ShortenedUrl < ApplicationRecord
    validates :short_url, presence: true, uniqueness: true
    validates :long_url, presence: true, uniqueness: true

   after_initialize :generate_short_url if :new_record

    def self.random_code
        while true
            random_code = SecureRandom.urlsafe_base64
            return random_code unless exists?(short_url: random_code)
        end
    end

    private
    def generate_short_url
        self.short_url = ShortenedUrl.random_code
    end
end
