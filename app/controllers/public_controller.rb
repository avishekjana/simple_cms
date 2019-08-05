class PublicController < ApplicationController
  skip_before_action :authenticate_admin_user!
  before_action :set_subjects

  layout "public"

  def index
  end

  def pages
    @subject = Subject.find(params[:subject_id])
  end

  def sections
    @subject = Subject.find(params[:subject_id])
    @page = Page.find(params[:page_id])
  end

  protected

    def set_subjects
      @subjects = Subject.published
    end
end
