# system generated products 
# How To Run: $ rake task:creating_products[500]
# optional arguments of number of products generated
#

namespace :task do
    desc 'creating random products'
    task :creating_products, [:count] => [:environment] do |task, args|
        args[:count].to_i.times do
            random_name = ('A'..'Z').to_a.shuffle.first(6).join
            random_brand = ('A'..'Z').to_a.shuffle.first(6).join
            random_model = ('A'..'Z').to_a.shuffle.first(6).join
            random_year = (10..20).to_a.shuffle.first(1).push((0..9).to_a.shuffle.first(2)).join

            Product.create(name: random_name, brand: random_brand, model: random_model, year: random_year)
        end
    end
  end
  