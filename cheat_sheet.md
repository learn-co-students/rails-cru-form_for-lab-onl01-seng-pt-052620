 
define this: 
feature specs / integration specs 
def self.controller_path
"artists" 
end 


capybara works with rspec provides click_on, visit, etc. Interacting with the browser

rails g resource Artist name:string bio:text --no-test-framework --no-assets --no-helper 

      create    db/migrate/20201006060129_create_artists.rb
      create    app/models/application_record.rb
      create    app/models/artist.rb
      invoke    controller
      create    app/controllers/artists_controller.rb
      invoke    erb
      create    app/views/artists
      invoke    resource_route
       route    resources :artists

* When you go to artists/1  
We send a get request to artists/1 
Processed by ArtistsController show action as HTML 
The parameters of the request are {"id" => "1"} 

Artist.load   
Selecting artist from the database 
When we see sql in the terminal what creates a query. If we see a SQL query in the server logs it means it came from ActiveRecord. 

ActiveRecord is an example of an ORM Library. It allows us to call a method and generate an SQL Query 

routes.rb 
This file connects a route with a controller action 
Parameters are extracted from this routes.rb file

What's the main purpose of the Controller? 
How we should respond to a particular kind of request 

A route determines what request gets routed to which action 
action determines how we respond 

action either renders html or json, or redirect to another route which will render a response 


new / create in controller 2 different request 
new => displays a form to the user that they can use to create a new artist 

create => handles the form submission rendered by new 

