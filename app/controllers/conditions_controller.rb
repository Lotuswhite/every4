class ConditionsController < ApplicationController
  def index
  end

  private
  def condition_params
  params.require(:condition).permit( :info, :text, :day).merge(user_id: current_user.id)
  end
end
