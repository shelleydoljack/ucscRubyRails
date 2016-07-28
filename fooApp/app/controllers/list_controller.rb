class ListController < ApplicationController
  def files
    @files = Dir.glob('*')
  end
end
