class NewsPoint < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :content]

  validates :title, :presence => true, :uniqueness => true
  
  belongs_to :cover, :class_name => 'Image'
end
