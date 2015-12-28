class Book < ActiveRecord::Base
  
  belongs_to :user
  has_attached_file :image
  has_attached_file :resource

  validates_attachement_content_type :image,

  content_type:  /^image\/(png|gif|jpeg)/,
  message: "only images allowed"

  validates_attachement_content_type :resource,
  content_type: ['application/pdf'],
  message: "only pdfs allowed"

  validates :image, attachement_presence: true
  validates :resource, attachement_presence: true
  
  
end
