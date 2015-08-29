class KindsController < ApplicationController
  before_action :find_kind, only: [:show, :edit, :update, :destroy]

  def index
    @works = Work.all
    @kinds = Kind.all.order(:language)
  end

  def new
    @kind = Kind.new
  end

  def create
    @kind = Kind.new(kind_params)
    @kind.save
    redirect_to root_path
  end

  def update
    @kind.update kind_params
    redirect_to root_path
  end

  private

  def find_kind
    @kind = Kind.find params[:id]
  end

  def kind_params
    params.require(:kind).permit([:language])
  end
end
