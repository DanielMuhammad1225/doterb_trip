class NotifikasiEmailMailer < ApplicationMailer
    def welcome_email(user_id)
        
            @user = User.find(user_id)
            @url = 'http://example.com/login'
            mail(to: 'muhammad.romadhan@c-aio.com', subject: 'Welcome ZTo my Awesome Site:)')
            format.html ( render layout: 'my_layout')
            format.text
        end
    end
end
