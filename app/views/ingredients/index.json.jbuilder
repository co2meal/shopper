json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :emart_price, :homeplus_price, :kimsclub_price, :lotte_price, :hanaro_price
#  json.url ingredient_url(ingredient, format: :json)
end
