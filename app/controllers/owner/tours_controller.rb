class Owner::ToursController < ApplicationController
  def index
    @tours = policy_scope([:owner, Tour]).order(created_at: :desc)
  end
end
