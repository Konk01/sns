class RelationshipsController < ApplicationController
	before_action :authenticate_user!
	def create
		Relationship.create(followed_id: params[:followed_id],
							follower_id: current_user.id)
		redirect_to root_path
	end

	def destroy
		Relationship.find_by(follower_id: current_user.id).destroy
		redirect_to root_path
	end
end
