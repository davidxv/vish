ActivitiesController.class_eval do

  def index
    # should be activities.page(params[:page], :count => { :select => 'activity.id', :distinct => true }) but it is not working in Rails 3.0.3 
    @activities =
      Activity.timeline(current_section,
                        current_subject).
               page(params[:page])

    respond_to do |format|
      format.html {
        if(params.has_key?(:page))
          render @activities
        end
      }
      format.atom
    end
  end

end
