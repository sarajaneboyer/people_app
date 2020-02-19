class PeopleController < ApplicationController
  def index
    @person = Person.all
  end

  def show
  end

  def new
  end
end
