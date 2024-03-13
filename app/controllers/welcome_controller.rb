class WelcomeController < ApplicationController
  def index
   # render plain: "hello world!"
   #__________________________________________________________________READ__
   @info = Test.all #for retrieving data from database
  end
  def show    #for retrieving data from database according to id
    @info = Test.find(params[:id])
  end
  #for create/inserting data _______________________________________
  def new
    @test = Test.new
  end
  
  def create
    #for id to be 1,2,3,4,5,.....in order
    last_id = Test.maximum(:id)
    new_id = last_id.nil? ? 1 : last_id + 1
    @test = Test.new(test_params)
    @test.id = new_id
    if @test.save
      redirect_to '/success'
    else
      render :new, status: :unprocessable_entity
    end
  end
  #_____________________________for update or edit_______________________
  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])

    if @test.update(test_params)
      redirect_to root_path, notice: 'Record updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  #__________________________________________for deleting record_____________
  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    redirect_to root_path, notice: 'Test was successfully destroyed.'
  end
  private
    def test_params
      params.permit(:name, :lastname, :message)
    end
end
