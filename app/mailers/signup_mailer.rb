class SignupMailer < ApplicationMailer
  default from: 'webdb.hosei@signalysis.co.jp'

  def signup_email( user, url )
    @user = user
    @url  = url
    mail(to: @user.email, subject: 'Register your Handle to ScapsOwl Project')
  end
end
