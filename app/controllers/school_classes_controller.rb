class SchoolClassesController < ApplicationController
    before_action :find_schoolclass, only: [:show, :edit, :update, :destroy]

  def index 
    @classes= SchoolClass.all

    # render :index
  end 

  def show 
    # render :show
  end
  
  def new 
    @schoolclass = SchoolClass.new
    
    render :new 
  end 
  
  def create 
    @schoolclass = SchoolClass.create(schoolclass_params)
    redirect_to  @schoolclass
  end 
  
  def edit 
    # @schoolclas = SchoolClass.find(params[:id])
  end 
  
  def update
    # @schoolclas = SchoolClass.find(params[:id])
    @schoolclass.update(schoolclass_params)
    
    redirect_to school_class_path(@schoolclass.id)
    # redirect_to schoolclass_path(@schoolclass)
    # redirect_to @schoolclass
  end 
  
  def destroy 
    # @schoolclas = SchoolClass.find(params[:id])
    @schoolclass.destroy 

    redirect_to school_classes_path

  end 

  private 

  def schoolclass_params 
    params.require(:school_class).permit(:title, :room_number)
  end 

  def find_schoolclass
    @schoolclass = SchoolClass.find(params[:id])
  end 
end
