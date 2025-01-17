class ReviewsController < ApplicationController
    get "/reviews" do
        #can we queury the data in here to only return specific reviews
        #something like if params.include("rating < x") only show specific rating
        if params.include?("filter_by")
             #~= /filter_by/
            min = params['filter_by']
            Review.all.where("'#{min}' <= score").to_json
        else
            Review.all.to_json
        end
    end
    get "/reviews/:id" do
        find_review
        @review.to_json
    end
    patch "/reviews/:id" do
        find_review
        #use private method to grab only acceptable params
        @review.update(review_params)
        @review.to_json
    end
    post "/reviews" do 
        review = Review.create(review_params)
        review.to_json
    end
    delete "/reviews/:id" do
        Review.destroy(params[:id])
    end
    private 
    def review_params
        allowed_params = %w(comment score user_id restaurant_id) 
        params.select { |k,v| allowed_params.include?(k) }
    end

    def find_review
        @review = Review.find([params[:id]]).first
    end

end