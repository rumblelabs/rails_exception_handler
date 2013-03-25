if(RailsExceptionHandler.configuration.activate?)
  class ErrorResponseController < ApplicationController
    def index
      render(:text => @_env['exception_handler.response'], :layout => false)
    end

    def dummy_action
      render :nothing => true
    end
  end
end
