class PackController < ApplicationController

    def index
        @my_packs = current_user.packs
        @category = Category.all
    end 

end
