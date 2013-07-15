class Link < ActiveRecord::Base
	validates :name, :presence => true
	validates :url, :presence => true
  attr_accessible :name, :string, :url
end
