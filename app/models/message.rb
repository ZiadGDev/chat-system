class Message < ApplicationRecord
    belongs_to :chat
    
    def as_json(options={})
        {
            :number => number,
            :body => body,
        }
    end
end
