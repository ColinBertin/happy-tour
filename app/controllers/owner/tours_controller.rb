class Owner::ToursController < ApplicationController
  def index
    @tours = policy_scope([:owner, Tour])
  end
end
