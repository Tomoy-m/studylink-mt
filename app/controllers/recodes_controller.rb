class RecodesController < ApplicationController
  before_action :authenticate_user!
  def index
      @recodes = Recode.all
  end

  def new
      @recode = Recode.new
  end

  def create
      recode = Recode.new(recode_params)
      recode.user_id = current_user.id
      if recode.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
  end

  def edit
      @recode = Recode.find(params[:id])
  end
  
  def update
     recode = Recode.find(params[:id])
     if recode.update(recode_params)
      redirect_to :action => "index", :id => recode.id
     else
      redirect_to :action => "new"
     end
  end

  def destroy
      recode = Recode.find(params[:id])
      recode.destroy
      redirect_to action: :index
  end

  private
  def recode_params
      params.require(:recode).permit(:title, :date, :content, :start_time, :finish_time)
  end
end
