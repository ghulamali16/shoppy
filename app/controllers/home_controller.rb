# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @user = User.find_by(params[:id])
  end
end
