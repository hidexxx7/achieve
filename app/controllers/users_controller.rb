class UsersController < ApplicationController
  def index
    @users = User.all
  end

  # showアククションを定義します。入力フォームと一覧を表示するためインスタンスを2つ生成します。
  def show
    @user = User.find(params[:id])
    @users = User.all
  end

end
