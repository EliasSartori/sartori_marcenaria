class ProductsOrder < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  before_save :calcula_valor_total
  before_save :subtract_quantity

  private

  def calcula_valor_total
    self.total_value = self.quantity * self.unitary_value
  end

  def subtract_quantity
    self.product.quantity -= self.quantity
    self.product.save
  end

end
