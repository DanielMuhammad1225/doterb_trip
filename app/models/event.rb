class Event < ApplicationRecord
    mount_uploader :photo
    validates :name, presence: true, length: {minimum: 2}
    
    paginates_per 15
end
