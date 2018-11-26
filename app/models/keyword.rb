class Keyword < ApplicationRecord
    has_many :keyword_product_rels
    has_many :products, through: :keyword_product_rels

    validates_presence_of :name
    validates_uniqueness_of :name
end
