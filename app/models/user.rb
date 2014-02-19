class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :email, uniqueness: true
end


class Encode
  def initialize(key)
    @salt= key
  end

  def encrypt(text)
    Digest::SHA1.hexdigest("--#{@salt}--#{text}--")
  end
end
ENCODER = Encode.new("shorty")
