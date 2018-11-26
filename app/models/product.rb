class Product < ApplicationRecord
    has_many :keyword_product_rels
    has_many :keywords, through: :keyword_product_rels

    validates_presence_of :name
end
