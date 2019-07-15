class ProjectsController < ApplicationController

  # def favorite
  #   @user = current_user
  #   @project = Project.find(params[:id])
  #   if @user.favorited?(@project)
  #     @user.favorites.delete(@project)
  #     redirect_to project_path(@project), notice: "Project is not longer a favorite."
  #   else
  #     @user.favorites << @project
  #     redirect_to project_path(@project), notice: "Project has been added to your favorites."
  #   end
  # end
end
