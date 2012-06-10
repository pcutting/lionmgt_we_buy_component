class Member::UsersController < Member::BaseController
  def show
    @user = User.find(params[:id])
  end

end
