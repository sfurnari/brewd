class RoasterRatingsController < ApplicationController
    before_action :find_roaster
    before_action :find_review, only: [:edit, :update, :destroy]

    def new
        @review = RoasterRating.new
    end

    def create
        @review = RoasterRating.new review_params
        @review.roaster_id = @roaster.id
        @review.user_id = @current_user.id

        if @review.save
            redirect_to roaster_path @roaster
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @review.update review_params
            redirect_to roaster_path @roaster
        else 
            render 'edit'
        end
    end

    def destroy
        @review.destroy
        redirect_to roaster_path @roaster
    end

    private
        def review_params
            params.require(:roaster_rating).permit(
                :rating,
                :review
            )
        end

        def find_roaster
            @roaster = Roaster.find params[:roaster_id]
        end

        def find_review
            @review = RoasterRating.find params[:id]
        end
end
