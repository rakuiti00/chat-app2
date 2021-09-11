class RoomsController < ApplicationController


  # 新規画面表示  
  def new
    @room = Room.new   
     
  end


end
