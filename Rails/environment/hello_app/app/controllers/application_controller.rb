class ApplicationController < ActionController::Base
  def hello
    render html:"Hello, World!" 
  end
  def hola
    render html:"¡Hola, Mundo!"
  end
  def goodbye
    render html:"Goodbye, World!"
  end
end
