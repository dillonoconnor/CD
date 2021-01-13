Rails.application.routes.draw do
  root "words#main"
  post "words", to: "words#search"
end
