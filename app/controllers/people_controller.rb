class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(people_params)

  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    if @person.update(people_params[:id])
      redirect_to people_path
    else
      render :new
    end
  end

  def destroy
  end


private

def people_params
  params.require(:person).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
end



end
