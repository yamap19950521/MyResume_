Rails.application.routes.draw do
  get "/",to: "pages#home"
  get "/resumes",to:"resumes#index"
  get "/resumes/new",to:"resumes#new" ,as: "new_resumes" 
end

