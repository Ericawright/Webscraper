
def run(page)
  title = page.css("title").text
  url = page.search('.title > a').map { |link| link['href']}
  points = page.search('.subtext > span:first-child').map { |span| span.inner_text}
  item_id = page.search('.subtext > a:nth-child(3)').map {|link| link['href'] }
  comments = Post.comment(fetch_usernames(page), fetch_comments(page))
  return new_post = Post.new(title, url, points, item_id, comments )
end

def fetch_comments(page)
  @comment_array = []
  page.search('.comment > font:first-child').map do |font| 
    @comment_array << font.inner_text
  end
  return @comment_array
end

def fetch_usernames(page)
  @username_array = []
  page.search('.comhead > a:first-child').map do |element|
    @username_array << element.inner_text
  end
  return @username_array
end

def populate_comments(usernames, comments)
  comment = []
  i = 0
  (usernames.length).times do
    comment << Comment.new(usernames[i], comments[i])
    i += 1
 end
 return comment
end



