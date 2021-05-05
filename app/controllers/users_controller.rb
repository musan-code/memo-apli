class UsersController < ApplicationController
  def index
    @hello = 'Hello, World!'
    render template: 'users/index'
  end
end
