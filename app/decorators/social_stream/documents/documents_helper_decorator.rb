DocumentsHelper.module_eval do

  # Return the right icon based on {#document}'s mime type
  def icon document, size=50

    icon_name = case icon_mime_type document
      when :default then "file"
      when :text then "file-text"
      when :image then "picture"
      when :audio then "music"
      when :video then "film"
    end
    if icon_name == "picture"
      #TAPI XXX HOW CAN THIS BE DONE IN A BETTER WAY?. What are the possible styles?
      "<div class='img-box' id='document-#{document.id}'></div><i class=\"icon-#{ icon_name }\"></i>".html_safe
    else
      "<i class=\"icon-#{ icon_name }\"></i>".html_safe
    end
  end

end
