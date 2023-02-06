class Event < ApplicationRecord
    mount_uploader :photo, AvatarUploader
    validates :name, presence: true, length: {minimum: 2}

end
