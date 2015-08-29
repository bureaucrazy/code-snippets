class KindsController < ApplicationController
  def index
    @works = Work.all.order(:id)
    @kinds = Kind.all.order(:language)
  end

end
