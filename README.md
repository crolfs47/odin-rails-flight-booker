# odin-rails-flight-booker
## The Odin Project - Flight Booker

Project completed as part of The Odin Project. Build an app that handles the first three steps of a typical 
checkout process for booking a one-way flight - 1. Enter desired dates/airports and search, 2. Choose from
among a list of available flights, 3. Enter passenger info for all passengers.

## Features:
 - Users can book a one-way flight within the next 30 days from and to the 10 largest airports in the US
 - Handles booking flights for 1-4 passengers
 - Users can select from a list of available flights that meet their search criteria
 - Prior to booking the selected flight, users input passenger information
 - Once flight is booked, confirmation page shows the trip summary with flight and passenger details and an email is sent to each passenger in the booking

## Languages/Technologies used:
 - Rails 
 - Ruby
 - PostgreSQL
 - CSS - Bulma
 - VS Code
 - Git/Github
 - Forms
 - Action Mailer
 - Letter Opener Gem

## What I learned:
 - How to seed database with random data, generated 10,000 flights
 - Nested forms
    - How to use #fields_for to render fields for additional model objects within the same form
    - Implementing #accepts_nested_attributes_for in the model
    - Allowing params to include the nested attributes
 - Better understanding of the MVC - Model-View-Controller pattern
 - More complex ActiveRecord assocations
 - ActiveRecord querying
 - How to send a confirmation email to passengers when a booking is made using Action Mailer
 - How to use Letter Opener gem to open emails in the browser instead of sending them while testing app
 
## Still can improve:
 - Kept this simple, but could add more functionality for users
 - Could generate more realistic flight data

Assignment - https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker

View Project  - TBD, haven't decided what to deploy on since Heroku is no longer free. See screenshots below.

## Screenshots: 
Search for flights:
![f](https://user-images.githubusercontent.com/97067689/218544471-8afe621c-5616-456e-a0b7-5738bb3eaaa3.png)

Search for flights:
![f](https://user-images.githubusercontent.com/97067689/218545367-db88669c-ae03-480f-ad98-72073120e572.png)

Enter passenger info:
![f](https://user-images.githubusercontent.com/97067689/218545634-ce888026-582a-4b9f-94bf-9efe9f1dfe99.png)

Flight confirmation:
![f](https://user-images.githubusercontent.com/97067689/218545783-539c9d02-eeed-485c-954f-c315fc2c7952.png)



