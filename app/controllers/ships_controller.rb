class ShipsController < ApplicationController
def index
  @ships = Ship.all
end

def new
  @ship = Ship.new
end

def show
  @ship = Ship.find(params[:id])
end
end
