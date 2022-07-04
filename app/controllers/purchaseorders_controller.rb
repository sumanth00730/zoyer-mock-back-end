class PurchaseordersController < ApplicationController
include DashboardConcern
  before_action :set_purchaseorder, only: %i[ show update destroy ]
  # GET /purchaseorders
  def index
    purchase_orders = search_orders(params, Purchaseorder)
    print params
    total_records = purchase_orders.count
    print purchase_orders.count
    if purchase_orders.present?
      render json: {status: true, message:"General Info" ,response: purchase_orders,total_records: total_records }
    else
      render json: {status: true, message: "Could not have records", response: [], total_records: 0}
    end
  end

  # GET /purchaseorders/1
  def show
    render json: {status: true, message:"General Info" ,response: @purchaseorder, total_records: 0 }
  end

  # POST /purchaseorders
  def create

    @purchaseorder = Purchaseorder.new(purchaseorder_params)
    if @purchaseorder.save
      render json: @purchaseorder, status: :ok, location: @purchaseorder
    else
      render json: @purchaseorder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purchaseorders/1
  def update
    if @purchaseorder.update(purchaseorder_params)
      render json: @purchaseorder
    else
      render json: @purchaseorder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purchaseorders/1
  def destroy
    @purchaseorder.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchaseorder
      @purchaseorder = Purchaseorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchaseorder_params
      params.require(:request_params).require(:purchase_order).permit(:amount, :category_id, :description, :gl_vendor, :payment_due_date, :payment_terms, :purchaseOrder_date, :purchaseOrder_number, :status_id, :tax_id, :tax_values, :tds, :total_amount, :vendor_id)
    end
end

# Parameters {"request_params"=>{"purchase_purchaseorder"=>{"vendor_id"=>"77", "purchaseorder_number"=>"Po123", "purchaseorder_date"=>"2022-06-23", "payment_due_date"=>"2022-06-27", "payment_terms"=>"5", "amount"=>"8790", "tax_id"=>"1", "tds"=>{"tds_type"=>"1", "cost"=>"879"}, "total_amount"=>"9493.2", "category_id"=>"1", "gl_vendor"=>"1", "description"=>"Tests", "tax_value"=>"0", "status_id"=>"1", "tax_values"=>{"0"=>{"tax_type"=>"0", "cost"=>"1582.2"}}}}, "user_type"=>"user", "controller"=>"purchaseorders", "action"=>"create"} permitted: false>

# Parameters {"amount"=>123445, "description"=>"Second test", "payment_due_date"=>"28/07/2022", "controller"=>"purchaseorders", "action"=>"create", "purchaseorder"=>{"amount"=>123445, "description"=>"Second test", "payment_due_date"=>"28/07/2022"}} permitted: false>