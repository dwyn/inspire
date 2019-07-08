class WelcomeController < ApplicationController
  def home
    @projects = Project.all
  end
end
