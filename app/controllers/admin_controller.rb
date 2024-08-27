class AdminController < ApplicationController
  #Ensures that admin pages are only accessible by authorized users
  before_action :authenticate_admin!

  def index

  end
end