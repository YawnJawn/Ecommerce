class AdminController < ApplicationController
  #Any controller that inherits from this controller will use layouts/admin.html.erb
  layout 'admin'
  #Ensures that admin pages are only accessible by authorized users
  before_action :authenticate_admin!

  def index

  end
end