class ApplicationController < ActionController::Base
  before_action :authenticate_student!

  layout 'admin_lte_2'

end
