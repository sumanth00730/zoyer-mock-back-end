class AddAttachmentsToPurchaseorders < ActiveRecord::Migration[7.0]
  def change
    add_column :purchaseorders, :attachments, :json
  end
end
