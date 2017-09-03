class VideosController < ApplicationController
    def index
        @videos = Video.all
        #includeでvideo_genreに所属する
        #@videos = Video.include(:video_genre)
        #@video_genres = Video_genre.all
    end

    #def math_rock
    #end

    def show
      @videos = Video.all.find_by(id: params[:id])
    end

    def create
    end
end
