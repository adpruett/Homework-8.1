class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_url
    else
      render 'new'
    end
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to people_url
    else
      render 'new'
    end
  end

  def destroy
    @person = Person.find(params[:id])

    @person.destroy

    redirect_to people_url
  end

  private
  def person_params
    params.require(:person).permit(:first_name, :last_name, :email, :age, :terms)
  end
end
