class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  has_many :players
  
  def to_hash
    {
      :id => id,
      :email => email,
      :sign_in_count => sign_in_count,
      :last_sign_in_at => last_sign_in_at,
      :current_sign_in_at => current_sign_in_at
    }
  end
end
