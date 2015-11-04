class PagesController < ApplicationController

  def index
  end

  def list
    @members = Member.paginate(:page => params[:page], :per_page => 50)
  end
end
