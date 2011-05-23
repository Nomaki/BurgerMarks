class Burger < ActiveRecord::Base
  has_many :marks
  belongs_to :brand

  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url  => "/assets/burgers/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/burgers/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end
