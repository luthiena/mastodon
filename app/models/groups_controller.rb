class GroupsController < ApplicationController
  def create
    @group = Group.new(group_params)
    if @group.save
      # Handle successful group creation
    else
      # Handle error
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:name, :description)
  end
end
