class Comment < ActiveRecord::Base
  attr_accessible :content, :topic_id, :user_id

  has_many :aswers
end
