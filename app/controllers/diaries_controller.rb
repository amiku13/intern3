class DiariesController < ApplicationController

  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
    redirect_to diaries_path
  end
  end

  private
  def diary_params
    params.require(:diary)
          .permit(:title, :name, :weather, :content)
  end

end
