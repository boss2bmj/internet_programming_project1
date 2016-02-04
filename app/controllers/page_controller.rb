class PageController < ApplicationController

before_action :authenticate_user!, only: [:contact,:profile]
  def home
  end

  def about
  end

  def contact
  end
  def profile
  end
  def faq
  end
end
