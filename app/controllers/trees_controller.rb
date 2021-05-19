class TreesController < ApplicationController

    before_action :find_tree, only: [:show, :update, :destroy]

    def index 
        @trees = Tree.all
        render json: @trees, include: :birds
    end

    def show 
        render json: @tree, include: :birds
    end

    def create 
        @new_tree = Tree.create number: params[:number] 
        render json: @new_tree, include: :birds
    end

    def update
        @tree.update number: params[:number]
        render json: @tree
    end

    def destroy
        @tree.destroy
        render json: {message: "success"}, status: :no_content
    end


    private

    def find_tree
        @tree = Tree.find params[:id]
    end
end
