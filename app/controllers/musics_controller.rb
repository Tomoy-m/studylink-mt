class MusicsController < ApplicationController
  before_action :authenticate_user!

  def index
      @musics = Music.all
      @music = Music.new
  end

  def new
      @music = Music.new
  end

  def create
      Music.create(music_params)
      redirect_to musics_path
  end

  def edit
      @music = Music.find(params[:id])
  end

  def update
      music = Music.find(params[:id])
      if music.update(music_params)
       redirect_to :action => "index"
      else
       render 'edit'
      end
  end

  def destroy
      @music = Music.find(params[:id])
      @music.destroy
      redirect_to musics_path
  end

  private

  def music_params
      params.require(:music).permit(:file)
  end

  
end

