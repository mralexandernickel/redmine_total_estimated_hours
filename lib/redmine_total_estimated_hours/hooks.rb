module RedmineTotalEstimatedHours
  class Hooks < Redmine::Hook::ViewListener
    def view_projects_show_sidebar_bottom(context={})
      cond = @project.project_condition(Setting.display_subprojects_issues?)
      estimated_hours = Issue.visible.sum :estimated_hours, :include => :project, :conditions => cond
      return "<h3>Geplante Zeit</h3><p><span class=\"icon icon-time\">#{l_hours(estimated_hours)}</span></p>"
    end
  end
end