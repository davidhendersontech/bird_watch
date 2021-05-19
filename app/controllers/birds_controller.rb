class BirdsController < ApplicationController

    before_action :find_bird, only: [:show, :update, :destroy]


    def index 
        @birds = Bird.all
        render json: @birds, include: :tree
    end

    def show 
        render json: @bird, include: :tree
    end

    def create 
        
        @tree = Tree.find params[:tree]
        @new_bird = Bird.create name: params[:name], species: params[:species], tree: @tree 
        render json: @new_bird
    end

    def update
        @bird.update name: params[:name], species: params[:species]
        render json: @bird
    end

    def destroy
        @bird.destroy
        render json: {message: "success"}, status: :no_content
    end

    def move
        byebug
    end


    private

    def find_bird
        @bird = Bird.find params[:id]
    end

end
