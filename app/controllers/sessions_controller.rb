class SessionsController < ApplicationController
  def create
    raise env["omniauth.auth"].to_yml
  end
end