class WorksController < ApplicationController
  before_action :find_work, only: [:show, :edit, :update, :destroy]

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      puts ">>>>>>>>>>>>>>>saved!"
      redirect_to root_path
    else
      # render :new
    end
  end

  def show

  end

  def index
    @works = Work.all.order(:id)
  end

  def edit

  end

  def update

  end

  def destroy

  end


  private

  def find_work
    @work = Work.find params[:id]
  end

  def work_params
    params.require(:work).permit([:title, :snippet, :kind_id])
  end
end
