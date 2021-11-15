class PacksController < ApplicationController

    def index
        @my_packs = current_user.packs
        @category = Category.all
    end 

    def new
        @pack = Pack.new
        @category = Category.all
    end

    # def create
    #     @pack = Pack.new(params[:])
    #     # @pack.user_id = current_user.id
    #     @pack.category_id = @pack.category_id.to_i
        
    #     respond_to do |format|
    #         if @pack.save
    #             format.html { redirect_to @pack,  notice: 'Pack successfully created.' }
    #             format.json { render :show, status: :created, location: @pack }
    #         else
    #             format.html { render :new }
    #             format.json { render json: @pack.errors, status: :unprocessable_entity }
    #         end
    #     end

    # end

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
