class TodopagesController < ApplicationController
  before_action :authenticate_user!

  def index
      @todopages = Todopage.where(user_id: current_user.id).includes(:user).order("created_at DESC")
      @todopage = Todopage.new 
  end

  def new
      @todopage = Todopage.new
  end
  
  def create
      todopage = Todopage.create(todopage_params)
      todopage.user_id = current_user.id
      if todopage.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
  end

  def edit
      @todopage = Todopage.find(params[:id])
  end

  def update
      todopage = Todopage.find(params[:id])
      if todopage.update(todopage_params)
       redirect_to :action => "index"
      else
       render 'edit'
      end
  end

  def destroy
      @todopage = Todopage.find(params[:id])
      @todopage.destroy
      redirect_to todopages_path, notice:"削除しました"
  end

  private
  
  def todopage_params
    params.require(:todopage).permit(:text)
  end
end


