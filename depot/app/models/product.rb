class Product
  include Mongoid::Document
  field :title, :type => String
  field :description, :type => String
  field :image_url, :type => String

  validates_presence_of :title, :description , :image_url
  validates_uniqueness_of :title
end
