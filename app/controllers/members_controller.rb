class MembersController < ApplicationController
  http_basic_authenticate_with name:"admin", password: ENV['SECRET'], except: :index
  def index
    @members = Member.paginate(:page => params[:page], :per_page => 50)
  end

  def new
  end
end
