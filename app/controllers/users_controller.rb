class UsersController < ApplicationController
  # def index
  #   @users = User.all
  # end

  def index
    @users = User.all
  end

  def show
    @user = User.includes(:profile).find(params[:id])

    if @user == current_user


    else
    end
  end

  def edit

  end

  def show_settings
    @type_list = {:account => 'Account', :privacy => 'Privacy', :advertising => 'Ads', :messages => 'Communications'}
    @type = (params[:type] || :account).to_sym
    case @type
    when :privacy

    when :advertising

    when :messages

    else
      @type = :account

    end
  end

  # def new
  #   @user = User.new
  # end
  #
  # def edit
  #   @user = User.find(params[:id])
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #
  #   if @user.save
  #     redirect_to @user
  #   else
  #     render 'new'
  #   end
  # end
  #
  # def update
  #   @user = User.find(params[:id])
  #
  #   if @user.update(user_params)
  #     redirect_to @user
  #   else
  #     render 'edit'
  #   end
  # end
  #
  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #
  #   redirect_to users_path
  # end
  #
  # private
  #   def user_params
  #     params.require(:user).permit(:name, :description)
  #   end
end
