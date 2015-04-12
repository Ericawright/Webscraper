class Post
  attr_accessor :title, :url, :points, :item_id, :comments
  
  def initialize(title, url, points, item_id, comments )
    @title = title
    @url = url
    @points = points
    @item_id = item_id
    @comments = comments
  end

  def to_s
    print_out = "#{title.blue}\nretrieved from #{url[0].blue}\nit has #{points[0].blue} on Hacker News\nHacker News item ID: #{(item_id[0].split('?'))[1].blue}\n"
    @comments.each do |comment|
      print_out = print_out + comment.to_s
    end
    print_out
  end

  class<<self

    def comment(usernames, comments)
      @comments = populate_comments(usernames, comments)
    end

  end
end




