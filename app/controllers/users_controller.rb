class UsersController < ApplicationController
  # before_action :authenticate_user!, only: []
    
  def after_sign_up_path_for(resource)
    users_profile_path # サインアップ後に遷移するpathを設定
  end

  def after_sign_in_path_for(resource)
    users_profile_path # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    new_user_session_path # ログアウト後に遷移するpathを設定
  end

  # def after_user_registration_for(resource)
  #   users_account_path
  # end

  
  def profile_edit
    
  end

  def profile_update
    current_user.assign_attributes(configure_account_update_params)
    if params[:user_image]
      current_user.user_image = "#{current_user.id}.jpg"
      image = params[:user_image]
      File.binwrite("public/user_images/#{current_user.user_image}",image.read)
    end
    if current_user.save
	  redirect_to "/profile_edit", notice: 'プロフィールを更新しました'
    else
      render "profile_edit"
    end
  end

  def show
  end

  def edit
  end

  def index
    @users = User.all
  end

  def account

  end

  def post_room
    @user = User.find(params[:id])
    @rooms = @user.rooms
    
  end

  def reserved_room
    @users = User.find_by(id: current_user.id)
    @rooms = Room.find_by(user_id: current_user.id)
    # @reservations = @user.reservations
    # @rooms = @user.rooms
  end

  # def update
  #   @user = current_user
  #   if @user.update 
  #   end
  # end

  protected

  def configure_account_update_params
    params.require(:user).permit(:name, :introduction, :user_image)
  end

end
