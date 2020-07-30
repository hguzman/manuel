class PeopleController < ApplicationController
  def index
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:notice] = "Guardado correctamente"
      redirect_to @person
    else
      render :new
    end
  end

  def edit
  end

  def show
    @person = Person.find(params[:id])
  end

  private
    def person_params
      params.require(:person).permit(:identificacion, :nombre, :edad, :avatar, :avatar_cache, :remote_avatar_url)
    end
end
