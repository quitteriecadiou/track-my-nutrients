class DietsController < ApplicationController
  def show(id)
    @diet = Diet.find(id)
  end
end
