class CountryController < ApplicationController


  def index
    @country = Country.all
  end

  def new
    @country = Country.new
  end
