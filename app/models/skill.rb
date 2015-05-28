class Skill < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	acts_as_votable
	#related to paperclip image
	has_attached_file :image, styles: { :medium => "300x300>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	validates_attachment_presence :image
end
