class Product < ActiveRecord::Base
  belongs_to :portion
  has_many :order_items

  #has_attached_file :product_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\Z/

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :product_image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :product_image, :content_type => /\Aimage\/.*\Z/
  
  
  #default_scope { where(active: true) }
  
end
