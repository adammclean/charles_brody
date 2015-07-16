class StaticPagesController < ApplicationController
  def index
    puts "****************************************"
    ContactMailer.welcome_email.deliver
  end

  def contact
    ContactMailer.contact_form.deliver
  end
end
