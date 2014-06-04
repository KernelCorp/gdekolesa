class Auto
  include Mongoid::Document
  include Mongoid::Paperclip

  field :name

  has_mongoid_attached_file :photo

  validates_attachment_content_type :photo, content_type: ['image/jpeg', 'image/gif', 'image/png']

  belongs_to :brand
end
