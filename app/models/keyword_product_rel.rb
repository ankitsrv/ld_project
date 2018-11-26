class KeywordProductRel < ApplicationRecord
    belongs_to :product
    belongs_to :keyword
end
