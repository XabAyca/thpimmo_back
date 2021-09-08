class Api::V1::UsersController < Api::BaseController

  before_action :find_user, only: %w[show]

  def show
    render_jsonapi_response(@user)
  end

  def index 
    @users = User.all 
    render_jsonapi_response(@users)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end