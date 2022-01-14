class ReviewsController < ApplicationController

    before_action :find_list 

    def create
        @review = Review.new(review_params)
        @review.list = @list
        @review.save

        redirect_to list_path(@list)
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating)
    end

    def find_list
        @list = List.find(params[:list_id])
    end

end
