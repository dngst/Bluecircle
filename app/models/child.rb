class Child < ActiveRecord::Base
  has_many :users
  mount_uploader :picture, PictureUploader
  validates :name, :presence => true
  end
