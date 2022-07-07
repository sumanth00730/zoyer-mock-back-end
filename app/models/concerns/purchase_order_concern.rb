module PurchaseOrderConcern
    def delete_purchase_order(id)
        purchase_order = Purchaseorder.find(id)
        purchase_order.destroy
    end
end