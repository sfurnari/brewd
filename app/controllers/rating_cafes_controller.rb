class RatingCafesController < ApplicationController
    before_action :find_cafe
    before_action :find_review, only: [:edit, :update, :destroy]

    def new
        @review = RatingCafe.new
    end

    def create
        @review = RatingCafe.new review_params
        @review.cafe_id = @cafe.id
        @review.user_id = @current_user.id

        if @review.save
            redirect_to cafe_path @cafe
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @review.update review_params
            redirect_to cafe_path @cafe
        else 
            render 'edit'
        end
    end

    def destroy
        @review.destroy
        redirect_to cafe_path @cafe
    end

    private
        def review_params
            params.require(:rating_cafe).permit(
                :rating,
                :review
            )
        end

        def find_cafe
            @cafe = Cafe.find params[:cafe_id]
        end

        def find_review
            @review = RatingCafe.find params[:id]
        end
end
