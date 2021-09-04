class HomeController < ApplicationController
  def index
    @data_keys = [
      'APC',
      'PDP',
      'PRP',
      'NNPP',
      
    ]
    @data_values = [987, 1024, 18, 12, 04]
  end
end
