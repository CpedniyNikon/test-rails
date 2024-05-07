class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render plain: "hello, world!"
  end

  def bye
    render plain: "bye, world!"
  end
end
