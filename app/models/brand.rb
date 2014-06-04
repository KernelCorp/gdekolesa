class Brand
  include Mongoid::Document
  include Mongoid::Paperclip

  field :name

  has_mongoid_attached_file :logo

  validates_attachment_content_type :logo, content_type: ['image/jpeg', 'image/gif', 'image/png']

  has_many :autos
end
