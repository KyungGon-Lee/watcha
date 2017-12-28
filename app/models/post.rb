class Post < ActiveRecord::Base
<<<<<<< HEAD
  mount_uploader :image, PhotoUploader # 업로더를 다른 모델이 쓸 수 있게 함

  belongs_to :user
  has_many :comments

=======
  belongs_to :user
  belongs_to :movie
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
end
