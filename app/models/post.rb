class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates_presence_of :title, :content
end
