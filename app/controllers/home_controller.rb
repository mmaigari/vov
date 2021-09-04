class HomeController < ApplicationController
  def index
    @data_keys = [
      'APC',
      'PDP',
      'PRP',
      'NNPP',
      
    ]
    @data_values = [150, 165, 0, 0, 0]
  end
end
