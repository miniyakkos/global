class MembersController < ApplicationController
  def index
    @members = Member.paginate(:page => params[:page], :per_page => 50)
  end
end
