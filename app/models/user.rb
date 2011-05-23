class User < ActiveRecord::Base
  has_many :marks

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

#  has_attached_file :avatar, :styles => { :small => "150x150>" },
#                    :url  => "/assets/users/:id/:style/:basename.:extension",
#                    :path => ":rails_root/public/assets/users/:id/:style/:basename.:extension"
#
#  validates_attachment_presence :avatar
#  validates_attachment_size :avatar, :less_than => 5.megabytes
#  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']


  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :nickname
#  attr_accessible :avatar, :avatar_file_name, :avatar_content_type, :avatar_size

end
