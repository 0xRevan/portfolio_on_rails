Rails.application.routes.draw do
  # This is a standard expression used to initialize the Rails routes

  # This sets the root path to the home action of the PagesController
  # So, if someone visits the main URL, they'll see my homepage
  root "pages#home"

  # Create a route for the contact page
  # When someone visits /contact, it'll show the contact action from PagesController
  get "/contact", to: "pages#contact"

  # I'll use this route later for handling form submissions from the contact page
  post "/submit_contact", to: "pages#submit_contact"

  # This is a health check route that Rails provides. I'm keeping it as it might be useful later
  get "up" => "rails/health#show", as: :rails_health_check
end
