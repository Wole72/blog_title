#
# Create your "Blog" class in this file.
#

class Blog
  def initialize url = nil
    @url = url
    #@latest_title = nil
  end
  
  def latest_title
   course_curriculum = Net::HTTP.get(URI.parse(@url))

    doc = open(course_curriculum)
    (doc/"/html/body/div[2]/div/div[2]/div/div/h3").inner_html
  end
end



