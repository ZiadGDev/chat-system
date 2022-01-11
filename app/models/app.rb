class App < ApplicationRecord
    validates :name, presence: true
    has_secure_token

    def as_json(options={})
        {
            :name => name,
            :token => token,
            :chats_count => chats_count,
        }
    end
end