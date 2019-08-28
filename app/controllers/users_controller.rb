class UsersController < ApplicationController

  def _edit_basic_info
    @users = User.all
  end
  
  def _from
    @users = User.all
  end
  
  def crea
    @users = User.all
  end
  
  def edit
    @users = User.all
  end
  
  def index
    @users = User.all
  end
  
  def new
    @users = User.all
  end
  
  def show
    @users = User.all
  end
  
  def tasks
    @users = User.all
  end
  
  def update
    @users = User.all
  end
  
  def update1
    @users = User.all
  end
  
  
  def login
   @user = User.find_by(email: params[:email], password: params[:password])
  if @user
    flash[:notice] = "ログインしました。"
    redirect_to posts_index_url
    
  else
    flash[:notice] = "認証に失敗しました。"
    render :login_page
  end
  end
  
  def destroy
     # ログイン中の場合のみログアウト処理を実行します。
    log_out if logged_in?
    flash[:success] = 'ログイン状態です。'
    redirect_to posts_index_url
  end
end

