class HomeController < ApplicationController
  def portfolio
    @projects = Project.all
  end

  def about
  end

  def contact
  end
end
