class PacksController < ApplicationController

    def index
        # packs created/owned by the current user
        @my_packs = current_user.packs

        @category = Category.all
        # packs purchased by the current user
        @purchased = current_user.purchased_packs
    end 

    def new
        @pack = Pack.new
        @category = Category.all
    end

    def show
        @pack = Pack.find(params[:id])
        @params = params
        @category = Category.all
    end

    def create
        @pack = Pack.new pack_params
        @pack.user_id = current_user.id
        respond_to do |format|
          if @pack.save
            # upload_file
            format.html { redirect_to my_packs_path }
          else
            format.html { render :new }
          end
        end
    end

    private

    def pack_params
        params.require(:pack).permit(:name, :description, :category_id, :price)
    end

     
end
