class Event < ApplicationRecord
    mount_uploader :photo
    validates :name, presence: true, length: {minimum: 2}

    def self.ransackable_associations(auth_object =nil)
        []
    end 

    def self.ransackable_attributes(auth_object = nil)
        ["avatars", "created_at", "description", "end_date", "id", "name", "photo", "start_date", "updated_at"]
      end

    def send_email_notification 
        User.all.each do | user|
            UserMailer
            paginates_per 15
        end 
    end
end
