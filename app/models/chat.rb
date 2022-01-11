class Chat < ApplicationRecord
    def as_json(options={})
        {
            :number => number,
            :messages_count => messagesCount,
        }
    end
end
