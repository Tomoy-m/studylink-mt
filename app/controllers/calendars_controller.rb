class CalendarsController < ApplicationController
  before_action :authenticate_user!
  def index
      @calendars = Calendar.where(user_id: current_user.id).includes(:user).order("created_at DESC")
      @calendar = Calendar.new
  end
      
  def new
      @calendar = Calendar.new
  end
    
  def show
      @calendar = Calendar.find(params[:id])
  end
    
  def create
      calendar = Calendar.create(calendar_parameter)
      calendar.user_id = current_user.id
        if calendar.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
  end
    
  def destroy
      @calendar = Calendar.find(params[:id])
      @calendar.destroy
      redirect_to calendars_path, notice:"削除しました"
  end
    
  def edit
      @calendar = Calendar.find(params[:id])
  end
    
  def update
      @calendar = Calendar.find(params[:id])
      if @calendar.update(calendar_parameter)
        redirect_to calendars_path, notice: "編集しました"
      else
        render 'edit'
      end
  end
    
  private
    
  def calendar_parameter
      params.require(:calendar).permit(:title, :content, :start_time)
  end
    
end

