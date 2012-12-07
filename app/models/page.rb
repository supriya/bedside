class Page < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :hospital, :room, :tips, :overview
  has_many :users, :through => :page_participations
  has_many :posts
  has_many :visits
  has_many :wishes
end