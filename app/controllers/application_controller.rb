class ApplicationController < ActionController::Base
    before_action :check_auth
    before_action :initialize_wishlist
    before_action :set_render_wishlist

    def set_render_wishlist
        @render_wishlist = true
    end

    def initialize_wishlist
        @wishlist ||= Wishlist.find_by(id: session[:wishlist_id])
        if @wishlist.nil?
            @wishlist = Wishlist.create
            session[:wishlist_id] = @wishlist.id
        end
    end
    private
    def check_auth
        if session['user'].nil?
            redirect_to(controller: :welcome, action: :start)
            false
        else
            true
        end
    end
end