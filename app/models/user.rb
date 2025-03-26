class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  belongs_to :role

  before_create  :check_authentication_token?

  def check_authentication_token?
    if authentication_token.blank?
      self.authentication_token = generate_token?
    end

  end
  def generate_token?
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end

  def superadmin?
    if role.try(:name) == 'SuperAdmin'
      return true 
    end
    false
  end

  def admin?
    if role.try(:name) == 'Admin'
      return true 
    end
    false
  end

  def teacher?
    if role.try(:name) == 'Teacher'
      return true 
    end
    false
  end

end
