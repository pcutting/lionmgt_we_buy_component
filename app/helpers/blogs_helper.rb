module BlogsHelper

  #comments should be a blog_comment collection object
  def show_blog_comments(comments)
    "TODO: Finish this helper in BlogsHelper"
  end

  #recursive function to print all the comments
  def print_comment_replies(comment, level = 0)
    str = "<div class='spacer' style='margin:2px 0 2px #{level*30}px;'>"
    #str += "  #{comment.comment},ID:#{comment.id}, Parent:#{comment.parent}<br/>"
    #str += "  #{link_to "Reply", "#", :id=>"comment_link_#{comment.id}"}</br/>"
    str += render :partial => 'reply', :locals => {:comment => comment}
    str += render :partial => 'reply_form', :locals => {:comment => comment}
    str += "</div>"
    
    comment.replies.each do |reply|
      str += print_comment_replies(reply, level + 1 )
    end
    str
  end

end
