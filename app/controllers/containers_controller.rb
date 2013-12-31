class ContainersController < ApplicationController
  helper_method :container_form

  def index; end

  def new; end

  def create
    if container_form.save
      redirect_to(
        containers_path,
        flash: { success: "container successfully created" }
      )
    else
      render :new
    end
  end

  private

  def container_form
    @container_form ||= ContainerForm.new(params[:container_form])
  end
end
