class Attendance < ApplicationRecord

     def self.ransackable_associations(auth_object =nil)
        []
    end 

    def self.ransackable_attributes(auth_object = nil)
        ["user_id", "event_id", "status"]
      end


    paginates_per 15
end
