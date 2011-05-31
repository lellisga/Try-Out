class Product #< ActiveRecord::Base
  include MongoMapper::Document

  #attr_accessible :title, :description, :image_url
  
  key :id, ObjectId
  key :title, String
  key :description, String
  key :image_url, String

  validates_presence_of :title , :description, :image_url
end
