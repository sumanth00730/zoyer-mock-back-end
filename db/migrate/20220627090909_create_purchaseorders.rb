class CreatePurchaseorders < ActiveRecord::Migration[7.0]
  def change
    create_table :purchaseorders do |t|
      t.integer :amount
      t.integer :category_id
      t.text :description
      t.integer :gl_vendor
      t.date :payment_due_date
      t.integer :payment_terms
      t.date :purchaseOrder_date
      t.string :purchaseOrder_number
      t.integer :status_id
      t.integer :tax_id
      t.text :tax_values, array: true
      t.text :tds, array: true
      t.integer :total_amount
      t.integer :vendor_id
      t.string :status_name

      t.timestamps
    end
  end
end

