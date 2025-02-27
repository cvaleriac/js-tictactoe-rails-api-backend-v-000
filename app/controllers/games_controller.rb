class GamesController < ApplicationController

  before_action :set_game, only: [:show, :update]

  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    render json: @game
  end

  def update
    @game.update(game_params)
    render json: @game
  end

  private

  def set_game
  @game = Game.find(params[:id])
  end

  def game_params
     params.permit(state: [])
  end

end
