class UniversitiesController < ApplicationController
  def index
    universities
  end

  def show
  end

  private

  def universities
    @universities ||= University.all
  end
  helper_method :universities

  def university
    @university ||= University.find(params[:id])
  end
  helper_method :university
end
