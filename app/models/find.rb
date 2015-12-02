class Find < ActiveRecord::Base

  products = Product.all

  products = products.where(["name LIKE ?", "%#{:key}%"]) if key.present?
  products = products.where(["category LIKE ?", cat]) if cat.present?

  return products
end
