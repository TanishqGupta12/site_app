class CkeditorUploadsController < ApplicationController

  # before_action :authenticate_user!  # If you need authentication

  def create
    beybug
    blob = ActiveStorage::Blob.create_and_upload!(
      io: params[:upload],
      filename: params[:upload].original_filename,
      content_type: params[:upload].content_type
    )

    render json: {
      url: url_for(blob)
    }
  end
end
