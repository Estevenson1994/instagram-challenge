class PhotoController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def store
    @value = Cloudinary::Uploader.upload(params[:image])
    @post = Post.new({ :link => @value['secure_url'],
                       :caption => params[:caption], :user_id => current_user.id })
    if @post.save
      Pusher.trigger('posts-channel', 'new-post', {
        link: @post.link,
        caption: @post.caption
      })
    end
    redirect_to('/')
  end
end
