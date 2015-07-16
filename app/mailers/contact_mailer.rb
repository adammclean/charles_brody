class ContactMailer < ApplicationMailer
default to: 'adam@charlesbrody.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_form.subject
  #
  def contact_form(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(to: 'adam@charlesbrody.com',
        from: email,
        body: "Message from #{name}". body)
  end

  def welcome_email
    mail(to: 'adam@charlesbrody.com', subject: 'Welcome to My Awesome Site')
  end
end
