class SessionsController < ApplicationController
  def index
  end

  def new
    @form = SessionForm.new
  end

  def create
    @form = SessionForm.new(session_params)
    @user = User.find_by(email: @form.email)

    if @user&.authenticate(@form.password)
      flash[:success] = 'Success'
      redirect_to root_path
    else
      flash[:danger] = 'Failed'
      redirect_to action: :new
    end
  end

  private

  def session_params
    params.require(:session_form).permit(:email, :password)
  end
end
