class GramsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def destroy
    @gram = Gram.find_by_id(params[:id]
    return render_not_found if @gram.blank?
    @gram.destroy
    redirect_to root_path
  end
