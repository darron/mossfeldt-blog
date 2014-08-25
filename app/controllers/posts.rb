MossfeldtBlog::App.controllers :posts do

  get :index, :map => '/' do
    posts = Posts.new
    @posts = posts.index
    render 'index', :layout => :application
  end

  get :post, :map => '/post/', :with => :id do
    post = Posts.new
    @post = post.get_post(params[:id])
    render 'post', :layout => :application
  end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end


end
