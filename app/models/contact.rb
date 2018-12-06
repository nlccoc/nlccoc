class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :topic
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Message From NLCC Website：#{topic}",
      :to => "boo0330@gmail.com, info@nlccoc.org, elvis0725@hotmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end