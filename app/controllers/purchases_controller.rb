class PurchasesController < ApplicationController

    def create
        @purchase = Purchase.new
        @purchase.user_id = current_user.id
        @purchase.pack_id = params[:id]

        respond_to do |format|
          if @purchase.save
            format.html { redirect_to my_packs_path }
        #   else
        #     format.html { render :new }
          end
        end
      end

end
