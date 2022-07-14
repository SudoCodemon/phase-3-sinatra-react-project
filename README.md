# Yelp with Friends
> Our goal was to build a backend server supporting with basic API to support a React frontend
> Live demo [_here_](https://www.example.com). <!-- update link once hosted -->

## Table of Contents
* [General Info](#general-information)
* [GitHub Repos](#github-repos)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Screenshots](#screenshots)
* [Setup](#setup)
* [Usage](#usage)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
* [Contact](#contact)
<!-- * [License](#license) -->


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

### Frondend Server

## Features
### Backend API Endpoints
| Endpoint | Params | Description |
|----- | ------ | ------|
| /restaurants | include_review | returns all restaurants.  If include_review is specified, reviews are included with the restaurants
| /restaurants/:id |  | returns a specific restaurant.
| /restaurants/user/:id | include_review | returns restaurants reviewed by the specified user.  If include_review is specified, reviews are included with the restaurants


## Screenshots
![Example screenshot](./img/screenshot.png)
<!-- If you have screenshots you'd like to share, include them here. -->


## Setup
What are the project requirements/dependencies? Where are they listed? A requirements.txt or a Pipfile.lock file perhaps? Where is it located?

Proceed to describe how to install / setup one's local environment / get started with the project.


## Usage
How does one go about using it?
Provide various use cases and code examples here.

`write-your-code-here`


## Project Status
Project is: _in progress_ / _complete_ / _no longer being worked on_. If you are no longer working on it, provide reasons why.


## Room for Improvement
Include areas you believe need improvement / could be improved. Also add TODOs for future development.

Room for improvement:
- Improvement to be done 1
- Improvement to be done 2

To do:
- Feature to be added 1
- Feature to be added 2


## Acknowledgements
Give credit here.
- This project was inspired by...
- This project was based on [this tutorial](https://www.example.com).
- Many thanks to...


## Contact
Created by [@flynerdpl](https://www.flynerd.pl/) - feel free to contact me!


<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->










backend for sinatra-react fullstack app


START SERVER

    RUN  #bundle exec rake db:migrate
    RUN  #bundle exec rake db:seed
    RUN  #bundle exec rake server


CLOSE SERVER
#localhost:9292
    RUN lsof -i tcp:9292
response:
COMMAND  PID USER ....
ruby    1234 root ....

    Run kill -9 1234 
