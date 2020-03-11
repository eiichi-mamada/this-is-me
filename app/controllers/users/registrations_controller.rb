class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  def new
    @user = User.new
  end

  def create
    params[:user][:birthday] = birthday_join
    params.require(:user)
    @user = User.create(sign_up_params)
    redirect_to root_path
  end



  private
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:birthday])
  end

  def birthday_join
    # パラメータ取得
    date = params[:birthday]
    # ブランク時のエラー回避のため、ブランクだったら何もしない
    if date["birthday(1i)"].empty? && date["birthday(2i)"].empty? && date["birthday(3i)"].empty?
      return
    end
    # 年月日別々できたものを結合して新しいDate型変数を作って返す
    Date.new date["birthday(1i)"].to_i,date["birthday(2i)"].to_i,date["birthday(3i)"].to_i
  end
end
