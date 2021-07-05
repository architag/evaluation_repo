class RegistrationsController < Devise::RegistrationsController
  def create
    super
    resource.image = Image.create
  end
end
