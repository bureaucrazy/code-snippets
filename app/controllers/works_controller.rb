class WorksController < ApplicationController
  before_action :find_work, only: [:show, :edit, :update, :destroy]

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    @work.save
    redirect_to kinds_path
  end

  def show

  end

  def index
    @kinds_list = Kind.all.order(:language)
    if params[:kind_id]
      @kind = params[:kind_id]
      @works = Work.all.where(["kind_id = ?", @kind])
    else
      @works = Work.all.order(updated_at: :desc)
    end
  end

  def edit

  end

  def update
    @work.update work_params
    redirect_to works_path(kind_id: @kind)
  end

  def destroy
    @work.destroy
    redirect_to works_path
  end


  private

  def find_work
    @work = Work.find params[:id]
  end

  def work_params
    params.require(:work).permit([:title, :snippet, :kind_id])
  end
end
