class Ingredient < ActiveRecord::Base

  def self.random_create(name, emart_price)
    random_price = Proc.new do
      price = emart_price + (emart_price * (Random.rand - 0.5) * 2 * 0.2)
      price = (price / 10).round * 10
    end
    self.create(name: name,
                emart_price: emart_price,
                homeplus_price: random_price.call,
                kimsclub_price: random_price.call,
                lotte_price: random_price.call,
                hanaro_price:random_price.call)
  end
end
