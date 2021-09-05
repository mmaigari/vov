class HomeController < ApplicationController
  def index
    @data_keys = [
      'APC',
      'PDP',
      'PRP',
      'NNPP',
      
    ]
    @data_values = [4765, 5907, 91, 12]
  end
end
