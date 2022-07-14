class RestaurantsController < ApplicationController
  get '/restaurants' do
    methods = {}
    if params.include?('include_review')
      # can we get this to return most recent review based on time?
      methods.merge!({ include: :reviews })
    end
    methods.merge!({ methods: :average_score })
    Restaurant.all.to_json(methods)
  end
  get '/restaurants/:id' do
    find_restaurant
    @restaurant.to_json({ include: :reviews, methods: :average_score })
  end

  get '/restaurants/user/:id' do
    find_restaurants
    methods = {}
    methods.merge!({ include: :reviews }) if params.include?('include_review')
    methods.merge!({ methods: :average_score })
    json_all_reviews = @restaurants.to_json(methods)
    restaurants = JSON.parse json_all_reviews
    review_ids = params.include?('friend_reviewed') ? Friend.following_ids(params[:id].to_i) : [params[:id].to_i]
    restaurants.each { |r| r['reviews'] = r['reviews'].select { |rev| review_ids.include?(rev['user_id']) } }
    restaurants.to_json
  end

  post '/restaurants' do
    restaurant = Restaurant.create(restaurant_params)
    restaurant.to_json
  end

  private

  def restaurant_params
    allows_params = %(name description category img)
    params.select { |k, _v| allowed_params.include(k) }
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def find_restaurants
    @restaurants = params.include?('friend_reviewed') ? Restaurant.reviewed_by_friends(params[:id].to_i) : Restaurant.reviewed_by(params[:id].to_i)
  end
end
