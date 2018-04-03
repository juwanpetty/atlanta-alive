class PagesController < ApplicationController
    def index
        @photos = Photo.all.limit(10).order('created_at desc')
    end
end
