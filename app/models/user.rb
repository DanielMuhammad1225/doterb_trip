class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         def self.ransackable_associations(auth_object =nil)
          []
      end 
  
      def self.ransackable_attributes(auth_object = nil)
          ["email", "full_name", "phone", "address"]
        end

  paginates_per 15
end
