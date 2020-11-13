class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :omniauthable, omniauth_providers: %i(facebook google)
  
  protected
  def self.find_for_google(auth)
    user = User.find_by(email: auth.info.email)
    unless user
      user = User.create(name:     auth.info.name,
                        provider: auth.provider,
                        uid:      auth.uid,
                        token:    auth.credentials.token,
                        email:    auth.info.email,
                        password: Devise.friendly_token[0, 20],
                        meta:     auth.to_yaml)
    end
    user
  end
  #facebookログインメソッド
  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first
 
    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        password: Devise.friendly_token[0, 20]
      )
    end
 
    user
  end
end
