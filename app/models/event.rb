class Event < ApplicationRecord
    mount_uploader :photo
    validates :name, presence: true, length: {minimum: 2}
    
    def send_email_notification 
        User.all.each do | user|
            UserMailer
            paginates_per 15
        end 
    end
end
