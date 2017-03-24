class Topic < ApplicationRecord
	validates_presence_of :title, :content

	belongs_to :category
	belongs_to :user
end
