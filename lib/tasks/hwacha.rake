require 'csv'

namespace :hwacha do
  desc "Inserting product data seed"
  task init: :environment do
    data_path = Rails.root.join('data', 'seed.csv')

    Product.transaction do
      CSV.foreach(data_path, headers: true) do |row|
        product = Product.new(row.to_h.except('id', 'date'))
        product.save!
      end
    end
  end
end