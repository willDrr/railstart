class UserMailer < ApplicationMailer
  default from: "mailgun@#{ENV['MAILGUN_DOMAIN_NAME']}"
  layout 'mailer'

  def send_simple_message(user)
	RestClient.post "https://api:#{ENV['MAILGUN_API_KEY'}"\
	"@api.mailgun.net/v3/#{ENV['MAILGUN_DOMAIN_NAME']}/messages",
	:from => "Excited User <mailgun@#{ENV['MAILGUN_DOMAIN_NAME']}>"
    :to => user.email,
	:subject => "Hello",
	:text => "Testing some Mailgun awesomness!"
  end
end
