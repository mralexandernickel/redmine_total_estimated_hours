module RedmineTotalEstimatedHours
  class Hooks < Redmine::Hook::ViewListener
    def view_projects_show_sidebar_bottom(context={})
      @estimated_hours = Issue.visible.sum :estimated_hours, :include => :project
      return "<h3>Geplante Zeit</h3><p><span class=\"icon icon-time\">#{l_hours(@estimated_hours)}</span></p>"
    end
  end
end