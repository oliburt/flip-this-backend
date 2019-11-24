# Flip-This

Flip-This is a digital drawing and animation application meant to mimic the 'flipbook' animation style of drawing many similar images with incremental changes on different pages and 'flipping' through them to create the perception of animation. A user can manually draw on multiple HTML canvas elements and play them in order to view the perceived animation. There are also some preset animation options. A user can apply multiple animations through the ability of adding layers of stacked canvas elements. There are more instructions on the index page.

This is a Vannilla JS app with a Rails backend. This repo is only for the back end of the application. You can find the front-end here: [Frontend-Repo](https://github.com/oliburt/flip-this-frontend)

[Demo](https://oliburt.github.io/flip-this-frontend/)

![Flip This Gif](https://media.giphy.com/media/TGM3EMWHsqHfAohENa/giphy.gif)

![Flip This Gif](https://media.giphy.com/media/IeKynFVmvqvva4v8WN/giphy.gif)

## Prerequisites

This was built on macOS.

In order to run this project on your own machine you will need first need Ruby and Rails installed. (This was built with Ruby v.2.6.3p62 and Rails v.6.0.1)

You can download and find documentation about the Ruby programming language [here](https://www.ruby-lang.org/en/documentation/). 

To download and find documentation about the Rails Framework you can do so [here](https://rubyonrails.org/). ( Rails is built on Ruby so download Ruby first)

You will also need [postgres](https://www.postgresql.org/) installed locally on your machine to setup the database.

Once you have Ruby and Rails installed you can fork and clone this project to your local machine.

After cloning the project open the main project directory in the terminal and run:
```
$ bundle install
```
to install all gem dependencies.

Then run:
```
$ rails db:create
$ rails db:migrate
```
to create the database and its schema in PostGres.

Then lastly you can run: 
```
$ rails s
```
to spin up the development server on your localhost.

## Main Features

This project has been setup to serve data to the front-end in JSON format. The API structure follows REST-ful conventions.

### Model setup

For this project there are two models so far.

User model - username:string. There is no password required to create a user but the username must be unique.

Flipbook Model - user_id:integer (foreign key) and flipbook_object:string. The flipbook object is a stringified json object of the flipbook. On the front-end then flipbook is created by recording large numbers of x and y coordinates and whether the mouse-down is true. Because of the large/complicated structure of this JSON object and the time pressures we (the authors) faced for this project we opted to store this as one big stringified object. Future plans may include refactoring this for better storage purposes.

Users have many flipbooks.

Flipbooks belong to a user.

### Auth and Validation

None so far.

## Technology Stack

### Backend

- [Ruby](https://www.ruby-lang.org/en/documentation/)
- [Rails](https://rubyonrails.org/) (Initialized with 'rails new' with '--api' flag)
- [Postgres](https://www.postgresql.org/)
- Rack-Cors for CORS

### Frontend - [Frontend-Repo](https://github.com/oliburt/flip-this-frontend)

- JavaScript
- HTML
- CSS

## Future Development Plans

- Adding erasing abilities
- Different color, shape drawing abilities
- See a watermark of the previous page when drawing.
- Move up and down layers
- Refactor storage to improve how flipbook object is stored

## Author

Oliver Burt and [Chris Hodge](https://github.com/99Chris99)