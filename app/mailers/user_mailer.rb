class UserMailer < ApplicationMailer
    default from: 'joaogabrielteste0511@gmail.com'
    def contact_mail
        @email = params[:email]
        @message = params[:message]
        @name = params[:name]
        mail(to: "joaogabrielteste0511@gmail.com", subject: "a new message from the website")
    end
end
