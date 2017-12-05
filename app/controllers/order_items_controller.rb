class OrderItemsController < ApplicationController
  # before_action :set_order_item, only: [:show, :edit, :update, :destroy]
  #
  # def index
  #   @order_items = OrderItem.all
  # end
  #
  # def show
  # end
  #
  # def new
  #   @order_item = OrderItem.new
  # end
  #
  # def edit
  # end

  def create
     @order = current_order
     @item = @order.order_items.new(item_params)
     @order.save!
     session[:order_id] = @order.id
     redirect_to cart_path
   end

  # def update
  #   respond_to do |format|
  #     if @order_item.update(order_item_params)
  #       format.html { redirect_to @order_item, notice: 'Order item was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @order_item }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @order_item.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

    def item_params
      params.require(:order_item).permit(:quantity, :product_id)
    end

    # def set_order_item
    #   @order_item = OrderItem.find(params[:id])
    # end
    #
    # def order_item_params
    #   params.require(:order_item).permit(:quantity, :product_id, :order_id)
    # end
end
