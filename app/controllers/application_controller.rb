class ApplicationController < ActionController::Base

  def admin_require
    unless current_user.admin
      flash[:error] = "restricted access"
      redirect_to root_path
      false
    end
  end

  def check_account_edit
    unless current_user.id==Account.find(params[:id]).user_id || current_user.admin
      flash[:error] = "restricted access"
      redirect_to root_path
      false
    end
  end  

end
