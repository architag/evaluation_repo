class RegistrationsController < Devise::RegistrationsController
  def create
    super
    resource.image = Image.create
    resource.image.image_file.attach(params[:customer][:image][:image_file])
  end
end
