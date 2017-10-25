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
      @genre = Genre.all
    end

    def fields
      @video = Video.find(1)
    end

    def create
      @video = Video.new(video_params)


      if @video.save
        @genre = Genre.find_by(name: params[:genre][:name]) #Genreのnameを取得
        @vg = VideoGenre.new(genre_id: @genre.id, video_id: @video.id) #VideoGenreのgenre_idとvideo_idを取得
        if @vg.save #VideoGenreにデータを保存
          redirect_to @video, notice: "登録しました"
        else
          render 'new'
        end
      end
    end

    private
        def video_params
          params.require(:video).permit(:title, :youtube_id, { :genre_id=> [] })
        end
        #def genre_params
        #    params.require(:genre).permit(:id, :name, { :genre_id=> [] })
        #end
end
