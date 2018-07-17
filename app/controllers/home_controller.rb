class HomeController < ApplicationController
   skip_before_filter :verify_authenticity_token, :only => [:create_upload]
  
  def index
  end
  
  def submit
  end
  
  def tool
  end
  
  def profile
  end
  
  def trial
  end
  
  def show
    @boards = Board.order(:created_at).all
  end
  
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to :back
  end
  
  def preview
    @board = Board.find(params[:id])
  end
  
  def create_board
    board1 = Board.create
    redirect_to :back
  end
  
  def create_upload
    puts board_params
    @board = Board.new(image_path: params[:board][:image_path])
    @board.save
    redirect_to :back
  end
  
  def state_update
    @board = Board.find(params[:id])
    @board.update(state: params[:state])
  end
  
  def update_concept
    @board = Board.find(params[:board_id])
    @board.update(concept: params[:concept])
  end

  def board_params
    params.require(:board).permit(:image_path)
  end
end
