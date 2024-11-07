class WishlistController < ApplicationController
    def show
        @render_wishlist = false
    end

    def add
        @product = Product.find_by(id: params[:id])
        current_order = @wishlist.orders.find_by(product_id: @product.id)
        if current_order
            current_order.update
        else
            @wishlist.orders.create(product: @product)
        end
        respond_to do |format|
            format.turbo_stream do
                render turbo_stream: [turbo_stream.replace('wishlist', 
                                                            partial: 'wishlist/wishlist',
                                                            locals: {wishlist: @wishlist}),
                                    turbo_stream.replace(@product, 
                                                            partial: 'products/product',
                                                            locals: {product: @product})
            ]
            end
        end
    end

    def remove
        order = Order.find_by(id: params[:id])
        order.destroy
        @product = Product.where(id: order[:product_id]).first
        respond_to do |format|
            format.turbo_stream do
                render turbo_stream: [turbo_stream.replace('wishlist', 
                                                            partial: 'wishlist/wishlist',
                                                            locals: {wishlist: @wishlist}),
                                    turbo_stream.replace(@product)
            ]
            end
        end
    end
end
