class Product #< ActiveRecord::Base
  include Mongoid::Document
  
  
  field :title, :require => true
  field :description, :require => true
  field :image_url, :require => true

  
end
