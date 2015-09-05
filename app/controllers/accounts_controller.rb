class AccountsController < ApplicationController
   before_filter :check_account_edit, :only=>[:edit]
    
    def index
      @users = User.order("email").page(params[:page])      
    end
    
    def show
      @account = Account.find(params[:id])
    end
    
    def edit
      @account = Account.find(params[:id])
    end
    
    def update
      @account = Account.find(params[:id])
      respond_to do |format|
      if @account.update_attributes(params[:account])
        format.html { redirect_to  root_path(), notice: 'Account was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
      end
    end
    
    def destroy
      @account = Account.find(params[:id])
      @account.destroy
      redirect_to :back
    end

  
end
