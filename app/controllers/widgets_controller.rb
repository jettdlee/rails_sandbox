class WidgetsController < ApplicationController
  def index
    @widgets = [
      OpenStruct.new(id: 1, name: 'Widget 1'),
      OpenStruct.new(id: 2, name: 'Widget 2'),
    ]
  end

  def show
    @widget = OpenStruct.new(id: params[:id],
                             manufacturer_id: rand(100),
                             name: "Widget #{params[:id]}")
  end
end
