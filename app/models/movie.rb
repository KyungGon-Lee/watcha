class Movie < ActiveRecord::Base
<<<<<<< HEAD
  # has_many :movies
  has_many :reviews

  mount_uploader :poster, PhotoUploader
=======
  has_many :movies
  has_many :reviews

>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
  def number
    self.reviews.count
  end

  def average
    sum = 0
    self.reviews.each do |review| # self하면 본인 객체가 들어감
    sum += review.rating
    end
    if self.reviews.count == 0
      0
    else
    sum.to_f / self.reviews.count
    end
  end

end
