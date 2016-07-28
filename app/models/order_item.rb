class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  
  validates :qty, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :product_present
  validate :order_present
  
  # testando
  #validates :order_id, :uniqueness => { :scope => :product_id, :message => "Product already added." }

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.unit_price
    end
  end

  def total_price
    unit_price * qty
  end

private
  def product_present
    if product.nil?
      errors.add(:product, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = qty * self[:unit_price]
  end  
  
end
