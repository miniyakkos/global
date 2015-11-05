class MembersController < ApplicationController
  http_basic_authenticate_with name:"admin", password: ENV['SECRET']
  def index
    @members = Member.paginate(:page => params[:page], :per_page => 50)
    @member = Member.new
  end

  def create
    @member = Member.new(
      username: params[:member][:username],
      rank: params[:member][:rank],
      points: params[:member][:points]
    )
    if @member.save
      redirect_to members_path
    else
      @errors = @member.errors.full_messages
      @members = Member.paginate(:page => params[:page], :per_page => 50)
      render :index
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    render json: @member
  end
end
