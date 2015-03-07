class UsersController < ApplicationController

  def index
    @name = "Index action"
  end

  def new
    @name = "Signup"
  end

  def edit
    @name = "user edit"
  end

  def show
    @name = "Show user"
  end

  def create
    @name = "Create user"
  end
  
end
