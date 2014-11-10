class UserController < ApplicationController
  def index
		@users = User.all
  end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:note] = "保存成功"
		else
			flash[:note] = "保存失败"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update 
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:note] = "修改成功"
		else
			flash[:note] = "修改失败"
		end
	end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
