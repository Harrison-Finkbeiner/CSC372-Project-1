# README

### Ruby version:
- ruby 3.2.2 
- rails 7.0.8

# Description
This program is a web application that allow users to create an account and sign in. On the site they are able to add new recipes and view recipes created by other users. We tested this program by adding test
data to the database to ensure only a unique username can be entered. We also tested the sign in functionality by trying to login in with invalid credentials. The site has alerts for the user to share this
information with them.

This repository consists of:
- Connection to MongoDB
- jbuilder to build JSON objects
- HTML/CSS code for front end development
  - Embedded Ruby within HTML/CSS
- RestFul API operations
- User authentication
# Getting Started

## Installation
    bundle install

## Run
    rails s

## Models
- Users
- Recipes

## Views *(.html.erb)*
- Home Page
  - index
- Recipes
  - index
  - new
  - search
  - show
  - edit
- Users
  - index
  - edit
  - login
  - new
  - show

## Controllers
- Home Page
- Recipe
- Users
