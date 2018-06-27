class Order < ActiveRecord::Base
  belongs_to :user
  has_one :products_order, dependent: :destroy
  after_initialize :delivered_set

  after_save :calcula_valor_total

  private

  def calcula_valor_total
    unless self.amount
      self.amount = self.products_order.total_value
      self.save   
    end
  end

  def delivered_set
    unless self.persisted?
      self.delivered = false
    end
  end
end
