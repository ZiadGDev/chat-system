class Chat < ApplicationRecord
    has_many :message
    belongs_to :app

    def as_json(options={})
        {
            :number => number,
            :messages_count => messages_count,
        }
    end
end
