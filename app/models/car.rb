class Car
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Slug

  field :name

  has_mongoid_attached_file :photo

  validates_attachment_content_type :photo, content_type: ['image/jpeg', 'image/gif', 'image/png']

  slug :name

  belongs_to :brand
end
