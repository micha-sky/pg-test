class PagesController < ApplicationController
  def home
  end

  def about
    render :partial => 'about'
  end
end
