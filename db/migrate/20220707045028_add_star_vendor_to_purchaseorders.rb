class AddStarVendorToPurchaseorders < ActiveRecord::Migration[7.0]
  def change
    add_column :purchaseorders, :star_vendor, :boolean
  end
end
