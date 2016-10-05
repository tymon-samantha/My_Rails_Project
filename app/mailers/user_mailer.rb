class UserMailer < ApplicationMailer
  default from: "tymon.samantha@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
      :to => 'tymon.samantha@gmail.com',
      :subject => "A new contact form message from #{name}")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

  def welcome(user)
    @appname = "Bike Berlin"
    mail( :to => user.email,
      :subject => "Welcome to #{@appname}!")
  end
end
