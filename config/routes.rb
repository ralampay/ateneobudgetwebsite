Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "landing_pages#index"

  get "/pages/index", to: "pages#index", as: :homepage
  get "/pages/schedule", to: "pages#schedules", as: :schedules
  get "/pages/announcements", to: "pages#announcements", as: :announcements

  get "/guidelines/school_guidelines", to: "guidelines#school_guidelines", as: :school_guidelines
  get "/guidelines/central_services_guidelines", to: "guidelines#central_services_guidelines", as: :central_services_guidelines
  get "/guidelines/auxiliary_guidelines", to: "guidelines#auxiliary_guidelines", as: :auxiliary_guidelines
  get "/guidelines/capex", to: "guidelines#capexes", as: :capexes

  resources :downloadable_forms
  resources :uploaded_forms
end
