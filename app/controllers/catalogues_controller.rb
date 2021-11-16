class CataloguesController < ApplicationController

    def index
        @packs = Pack.all - current_user.packs
        @category = Category.all
    end

end
