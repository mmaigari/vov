class StatController < ApplicationController
  def index
    @data_keys = [
      'APC',
      'PDP',
      'PRP',
      'NNPP',
      
    ]
    @data_values = [0, 1, 0, 1, 0]
  end
end