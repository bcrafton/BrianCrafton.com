class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  searchkick
  def to_param
  	fullname
  end

  before_create :create_login

  def create_login
    self.fullname = "#{firstname}#{lastname}"
  end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_attached_file :image, styles: { medium: "400x600#", thumb: "100x100#", small: "200x300#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  has_attached_file :document, styles: {thumbnail: "60x60#"}
  validates_attachment :document, content_type: { content_type: "application/pdf" }

end
