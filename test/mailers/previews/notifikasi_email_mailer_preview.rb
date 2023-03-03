# Preview all emails at http://localhost:3000/rails/mailers/notifikasi_email_mailer
class NotifikasiEmailMailerPreview < ActionMailer::Preview
    def welcome_email
            EmailUser.with(user: User.first) .welcome_email
    end
end
