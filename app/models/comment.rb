class Comment < ActiveRecord::Base
  # belongs_to :user_id
  # 레퍼런스 하면 자동으로 생성되는데 이거떔에 댓글 안써짐
  belongs_to :user # 이렇게 해줘야 맞음
  belongs_to :post
end
