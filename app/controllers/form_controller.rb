class FormController < ApplicationController
  def ask


  end

  def show

  @user = params[:git_name]

  user = Form.new(params[:git_name])
    @full_name = user.full_name
    @user_id = user.user_id
    @location = user.location
    @join_date = user.join_date
    @company = user.company


  end
end
