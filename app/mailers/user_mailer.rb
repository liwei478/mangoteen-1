class UserMailer < ApplicationMailer
  def welcome_email(code)
    @code = code
    mail(to: '1055824818@qq.com', subject: 'hi')
  end
end
