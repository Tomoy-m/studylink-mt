class TimetablesController < ApplicationController
  before_action :authenticate_user!

  def index
      @timetables = Timetable.where(user_id: current_user.id).includes(:user).order("created_at DESC")
  end

  def new
      @timetable = Timetable.new
  end
  
  def create
      timetable = Timetable.create(timetable_params)
      timetable.user_id = current_user.id
      if timetable.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
  end

  def edit
      @timetable = Timetable.find(params[:id])
  end

  def update
      timetable = Timetable.find(params[:id])
      if timetable.update(timetable_params)
       redirect_to :action => "index"
      else
       render 'edit'
      end
  end

  def destroy
      @timetable = Timetable.find(params[:id])
      @timetable.destroy
      redirect_to timetables_path, notice:"削除しました"
  end

  private
  
  def timetable_params
    params.require(:timetable).permit( 
      :title11,
      :title12,
      :title13,
      :title14,
      :title15,
      :title16,
      :title21,
      :title22,
      :title23,
      :title24,
      :title25,
      :title26,
      :title31,
      :title32,
      :title33,
      :title34,
      :title35,
      :title36,
      :title41,
      :title42,
      :title43,
      :title44,
      :title45,
      :title46,
      :title51,
      :title52,
      :title53,
      :title54,
      :title55,
      :title56,
      :title61,
      :title62,
      :title63,
      :title64,
      :title65,
      :title66,
      :start_time1,
      :start_time2,
      :start_time3,
      :start_time4,
      :start_time5,
      :start_time6,
      :finish_time1,
      :finish_time2,
      :finish_time3,
      :finish_time4,
      :finish_time5,
      :finish_time6,
      :classroom11,
      :classroom12,
      :classroom13,
      :classroom14,
      :classroom15,
      :classroom16,
      :classroom21,
      :classroom22,
      :classroom23,
      :classroom24,
      :classroom25,
      :classroom26,
      :classroom31,
      :classroom32,
      :classroom33,
      :classroom34,
      :classroom35,
      :classroom36,
      :classroom41,
      :classroom42,
      :classroom43,
      :classroom44,
      :classroom45,
      :classroom46,
      :classroom51,
      :classroom52,
      :classroom53,
      :classroom54,
      :classroom55,
      :classroom56,
      :classroom61,
      :classroom62,
      :classroom63,
      :classroom64,
      :classroom65,
      :classroom66,
      :user_id,
  )
  end

end

