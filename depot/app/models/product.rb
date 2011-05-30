class Product #< ActiveRecord::Base
  include MongoMapper::Document

  #attr_accessible :title, :description, :image_url

  key :title, String
  key :description, String
  key :image_url, String
end
