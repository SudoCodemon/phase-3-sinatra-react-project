# Yelp with Friends
> Our goal was to build a backend server with a basic API to support a React frontend.  <!--Check out our live frontend [_here_](https://www.example.com). -->

## Table of Contents
* [General Info](#general-information)
* [GitHub Repos](#github-repos)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Setup](#setup)
* [Usage](#usage)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)



## General Information
This project, part of Flatiron Software Engineering track, Phase 3, focused on developing a backend server with API access.  We worked as a team of three to develop both the frontend and backend servers in one week.

## GitHub Repos
- [Backend Server](https://github.com/hkassow/phase-3-sinatra-react-project)
- [Frontend Server](https://github.com/hkassow/phase-3-sinatra-react-frontend)


## Technologies Used
### Backend Server
- Sinatra  ~> version 2.1
- Active Record ~> version 6.1
- SQLite3 ~> version 1.4

### Frontend Server
- React ^18.2.0
- React-Router-Dom ^5
- Styled Components ^5.3.5

## Features
### Backend API Endpoints
| Method | Endpoint | Params | Description |
| --- |----- | ------ | ------|
| GET | /restaurants |  | returns all restaurants
|  | | include_review | reviews are included with the restaurants
| GET | /restaurants/:id |  | returns a specific restaurant
| GET | /restaurants/user/:id |  | returns restaurants reviewed by the specified user
|  | |include_review | include reviews with the restaurants.  Reviews filtered to only those posted by the user or user friends
|  | |friend_reviewed | returns restaurants reviewed by user's friends
| POST | /restaurants |  | creates a new restaurant
|  | |name | restaurant name
|  | |description | restaurant description
|  | |category | restaurant category
|  | |img | restaurant image file
| GET | /reviews |  | returns all reviews
| GET | /reviews/:id |  | returns a specific review
| PATCH | /reviews/:id |  | updates a review
|  | |comment | updated comment
|  | |score | updated score (1-5)
| POST | /reviews |  | updates a review
|  | |comment | review comment
|  | |score | review score (1-5)
|  | |user_id | id of user creating the review
|  | |restaurant_id | id of restaurant being reviewed
| DELETE | /reviews/:id |  | deletes a specific review
| POST | /friends |  | updates a friendship
|  | |follower_id | id of user following another user
|  | |followee_id | id of user being followed
| GET | /users |  | returns all users
|  | |following | for each user include list of who they are following
|  | |followers | include list of users following this user
| GET | /users/:id |  | returns a specific user
|  | |following | include list of users this user is following
|  | |followers | include list of users following this user


## Setup
Take the following steps to set up the servers in a development environment
### Backend
- Download the [Backend Server](https://github.com/hkassow/phase-3-sinatra-react-project)
- `bundle install`
- `bundle exec rake db:migrate`
- `bundle exec rake db:seed`
- `bundle exec rake server`
- Backend server will now be running on [http://localhost:9292](http://localhost:9292)

### Backend Shutdown
It should be possible to shutdown the server using [CTRL-C].  If that fails, follow these steps:
- `lsof -i tcp:9292`
response:
COMMAND  PID USER ....
ruby    1234 root ....
- `kill -9 1234`

### Frontend
- Download the [Frontend Server](https://github.com/hkassow/phase-3-sinatra-react-frontend)
- `npm install`
- `npm start`
- Frontend server will now be running on [http://localhost:3000/](http://localhost:3000/)


## Usage
![Example screenshot](./img/app_frontpage.png)

1. 'Log in' as a specific user by selecting the [User] icon
2. Scroll through the list of restaurants and select [Reviews] to read reviews of this restaurant or leave one yourself
3. Search for restaurants by category
4. Switch to the Friends Page to see restaurants reviewed by your friends, or add another friend to your group 


## Project Status
- Project is: _in progress_.


## Room for Improvement

Backend:
- Complete all endpoints

Frontend:
- Add more sort/filter capability
- Support actual login of users
- All new restaurants to be added


## Acknowledgements
- This project was based on [this project assignment](https://github.com/learn-co-curriculum/phase-3-sinatra-react-project).

