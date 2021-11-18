class CataloguesController < ApplicationController

    def index
        # @packs holds only packs the user hasn't created or purchased
        @packs = Pack.all - current_user.packs - current_user.purchased_packs
        
        @category = Category.all
    end

end
