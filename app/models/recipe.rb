class Recipe < ApplicationRecord

  has_many :ingredients
	  has_many :directions
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
   accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
   validates_presence_of :title , :description
 has_attached_file :image, styles: { medium: "400x400>" }, validate_media_type: false
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
