# frozen_string_literal: true

class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render json: @rooms
  end
end
