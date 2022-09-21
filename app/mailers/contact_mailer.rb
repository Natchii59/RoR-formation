class ContactMailer < ApplicationMailer

  def contact(post)
    @post = post
    mail(to: 'contact@natchi.dev', subject: "Sujet de test")
  end

end
