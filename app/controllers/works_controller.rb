class WorksController < ApplicationController
  before_action :find_work, only: [:show, :edit, :update, :destroy]

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      puts ">>>>>>>>>>>>>>> S A V E D !"
      redirect_to root_path
    else
      # render :new
    end
  end

  def show
    puts ">>>>>>>>>>>>>>>>> #{params}"
    puts ">>>>>>>>>>>>>>>>> #{puts @work}"
  end

  def index
    @kind_list = Kind.all.order(:language)
    @kind = params[:kind_id]
    @works = Work.all.where(["kind_id = ?", @kind])
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
