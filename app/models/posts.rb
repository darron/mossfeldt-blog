class Posts

  require 'contentful'

  def initialize
    @contentful = Contentful::Client.new(
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      space: ENV['CONTENTFUL_SPACE'],
      dynamic_entries: :auto
    )
  end

  def index
    posts = @contentful.entries('order' => '-sys.createdAt')
  end

  def get_post(id)
    post = @contentful.entry(id, include: 2)
  end

end
