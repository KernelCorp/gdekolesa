class News
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  field :preview, type: String
  field :text, type: String

  has_mongoid_attached_file :image

  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/gif', 'image/png']


end
