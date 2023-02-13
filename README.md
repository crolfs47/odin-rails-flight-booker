# odin-rails-flight-tracker
## The Odin Project - Flight Tracker

Project completed as part of The Odin Project. Build an app that handles the first three steps of a typical 
checkout process for booking a one-way flight - 1. Enter desired dates/airports and search, 2. Choose from
among a list of available flights, 3. Enter passenger info for all passengers.

## Features:
 - Users can book a one-way flight within the nest 30 days from and to the 10 largest airports in the US
 - Handles booking flights for 1-4 passengers
 - Users can select from a list of available flights that meet their search criteria
 - Prior to booking, users input passenger information
 - Once flight is booked, confirmation page shows the trip summary with flight and passenger details

## Languages/Technologies used:
 - Rails 
 - Ruby
 - PostgreSQL
 - CSS - Bulma
 - VS Code
 - Git/Github
 - Forms

## What I learned:
 - How to seed database with random data, generated 10,000 flights
 - Nested forms
    - How to use #fields_for to render fields for additional model objects within the same form
    - Implementing #accepts_nested_attributes_for in the model
    - Allowing params to include the nested attributes
 - Better understanding of the MVC - Model-View-Controller pattern
 - More complex ActiveRecord assocations
 - ActiveRecord querying
 
## Still can improve:
 - Kept this simple, but could add more functionality for users
 - Could generate more realistic flight data

Assignment - https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker

View Project  - TBD, haven't decided what to deploy on since Heroku is no longer free. See screenshots below.

## Screenshots: 