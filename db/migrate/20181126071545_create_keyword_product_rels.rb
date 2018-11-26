class CreateKeywordProductRels < ActiveRecord::Migration[5.1]
  def change
    create_table :keyword_product_rels do |t|
      t.integer :keyword_id
      t.integer :product_id
      t.string :value

      t.timestamps
    end
  end
end
