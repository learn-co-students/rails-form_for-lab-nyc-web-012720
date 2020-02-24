class SchoolClassesController < ApplicationController
    
    def index
        @classes = SchoolClass.all
    end

    def new
        @class = SchoolClass.new
    end

    def show
        @class = SchoolClass.find(params[:id])
    end

    def create
        @class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        redirect_to @class
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to @class
    end

end
