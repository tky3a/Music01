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

    def new
      @video = Video.new
      @video.genre.build
    end

    def fields
      @video = Video.find(1)
    end

    def create
      @video = Video.new(video_params)


      if @video.save
        redirect_to @video, notice: "登録しました"
      else
        render 'new'
      end
   end
    private
        def video_params
          params.require(:video).permit(:title, :youtube_id)
        end
end
