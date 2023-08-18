# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  short_url  :string           not null
#  long_url   :string           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
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
