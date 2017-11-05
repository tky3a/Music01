class VideosController < ApplicationController
    def index
        @videos = Video.all
        @video = Video.all.find_by(id: params[:id])
        #includeでvideo_genreに所属する
        #@videos = Video.include(:video_genre)
        #@video_genres = Video_genre.all
    end

    #def math_rock
    #end

    def show
      @video = Video.all.find_by(id: params[:id])
      @genre = Genre.all.find_by(id: params[:id])
      @vg = VideoGenre.all.find_by(id: params[:id])
      #@video = Video.find(id: params[:id])←これだとエラー
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

#複数のジャンル登録できるように作成予定（未実装）
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

#ストロングパラメータ
    private
        def video_params
          params.require(:video).permit(:title, :youtube_id, { :genre_id=> [] })
        end
        #def genre_params
        #    params.require(:genre).permit(:id, :name, { :genre_id=> [] })
        #end
end
