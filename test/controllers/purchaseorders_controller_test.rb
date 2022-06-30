require "test_helper"

class PurchaseordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchaseorder = purchaseorders(:one)
  end

  test "should get index" do
    get purchaseorders_url, as: :json
    assert_response :success
  end

  test "should create purchaseorder" do
    assert_difference("Purchaseorder.count") do
      post purchaseorders_url, params: { purchaseorder: { amount: @purchaseorder.amount, category_id: @purchaseorder.category_id, description: @purchaseorder.description, gl_vendor: @purchaseorder.gl_vendor, payment_due_date: @purchaseorder.payment_due_date, purchaseorder_number: @purchaseorder.purchaseorder_number, status: @purchaseorder.status, status_id: @purchaseorder.status_id, tax_id: @purchaseorder.tax_id, tax_values: @purchaseorder.tax_values, tds: @purchaseorder.tds, total_amount: @purchaseorder.total_amount, vendor_id: @purchaseorder.vendor_id } }, as: :json
    end

    assert_response :created
  end

  test "should show purchaseorder" do
    get purchaseorder_url(@purchaseorder), as: :json
    assert_response :success
  end

  test "should update purchaseorder" do
    patch purchaseorder_url(@purchaseorder), params: { purchaseorder: { amount: @purchaseorder.amount, category_id: @purchaseorder.category_id, description: @purchaseorder.description, gl_vendor: @purchaseorder.gl_vendor, payment_due_date: @purchaseorder.payment_due_date, purchaseorder_number: @purchaseorder.purchaseorder_number, status: @purchaseorder.status, status_id: @purchaseorder.status_id, tax_id: @purchaseorder.tax_id, tax_values: @purchaseorder.tax_values, tds: @purchaseorder.tds, total_amount: @purchaseorder.total_amount, vendor_id: @purchaseorder.vendor_id } }, as: :json
    assert_response :success
  end

  test "should destroy purchaseorder" do
    assert_difference("Purchaseorder.count", -1) do
      delete purchaseorder_url(@purchaseorder), as: :json
    end

    assert_response :no_content
  end
end
