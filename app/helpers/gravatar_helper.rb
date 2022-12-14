module GravatarHelper

  def gravatar(email, options = { s: 200 })
    throw TypeError unless email.respond_to? :to_s
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.to_s)}?s=#{options[:s]}", alt: "pfp"
  end

end
