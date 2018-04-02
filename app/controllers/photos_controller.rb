class PhotosController < ApplicationController
    before_action :find_photo, only: [:show, :edit, :update, :destroy]

    def index
    end

    def new 
        @photo = Photo.new
    end

    def create
        @photo = Photo.new photo_params

        if @photo.save
            redirect_to @photo, notice: "Photo saved successfully"
        else 
            render 'new', notice: "Photo was not saved successfully"
        end
    end

    def show
    end

    def edit
    end

    def update
        if @photo.update photo_params
            redirect_to @photo, notice: "Photo saved successfully"
        else 
            render 'edit'
        end
    end

    def destroy
        @photo.destroy
        redirect_to photo_path
    end

    private

    def photo_params
        params.require(:photo).permit(:location, :description, :image)
    end

    def find_photo 
        @photo = Photo.find(params[:id])
    end
end
