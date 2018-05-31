class Comment < ActiveRecord::Base
  belongs_to :memo
  belongs_to :user
  validates :body, presence: true
end
