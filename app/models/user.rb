class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   # , :username, :tel, :f_name, :l_name
  validates :email, :username, uniqueness: true

  has_many :comment_place
end
# devise :database_authenticatable, :trackable, :timeoutable, :lockable