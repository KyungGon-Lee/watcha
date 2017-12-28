class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :reviews
<<<<<<< HEAD
  has_many :comments
=======
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
end
