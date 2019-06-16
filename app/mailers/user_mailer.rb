class UserMailer < ApplicationMailer
	def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Shop2!')
  end

  def account_removal_email(user)
    @user = user
    mail(to: @user.email, subject: 'Your Account Has Been Removed')
  end

  def account_updated_email(user)
    @user = user
    mail(to: @user.email, subject: 'Your Account Has Been Updated')
  end
end
