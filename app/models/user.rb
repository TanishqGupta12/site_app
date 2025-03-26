class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  belongs_to :role

  def superadmin?
    return true if role.try(:name) == 'SuperAdmin'

    false
  end

  def admin?
    return true if role.try(:name) == 'Admin'

    false
  end

  def teacher?
    return true if role.try(:name) == 'Teacher'
    false
  end

end
