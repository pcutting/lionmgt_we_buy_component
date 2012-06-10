module ApplicationHelper
  def external_link_to(label, target, options = [])
    #length = 25 #options[:length] ||= 25
    #window = options[:target] ||= "new"
    unless target.downcase.start_with?("http://","https://")
      link = "http://" + target.strip
    end
    link_to target, link, :target => "new"
    
  end

end
