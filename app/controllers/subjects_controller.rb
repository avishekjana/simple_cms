class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @sub = Subject.find(params[:id])
  end
end
