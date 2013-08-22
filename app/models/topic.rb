class Topic < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  has_many :comments
end
