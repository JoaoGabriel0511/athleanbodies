class UserMailer < ApplicationMailer
    default from: 'pckathleanbodies@gmail.com'
    def contact_mail
        @email = params[:email]
        @message = params[:message]
        @name = params[:name]
        mail(to: "pckathleanbodies@gmail.com", subject: "a new message from the website")
    end
end
