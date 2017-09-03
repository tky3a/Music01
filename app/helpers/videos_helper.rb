module VideosHelper

  def video(opts)
    iframe = content_tag(
      :iframe,
      '', # empty body
      width: 250,
      height: 200,
      src: "https://www.youtube.com/embed/#{opts[:video_id]}",
      frameborder: 4,
      allowfullscreen: true
    )
    content_tag(:div, iframe, class: 'youtube-container')
  end


end
