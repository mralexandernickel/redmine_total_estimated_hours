module RedmineTotalEstimatedHours
  class Hooks < Redmine::Hook::ViewListener
    def view_projects_show_sidebar_bottom(context={})
      project = context[:project]
      cond = project.project_condition Setting.display_subprojects_issues?
      estimated_hours = Issue.visible.sum :estimated_hours, :include => :project, :conditions => cond
      return "<h3>#{l(:field_estimated_hours)}</h3><p><span class=\"icon icon-time\">#{l_hours(estimated_hours)}</span></p>"
    end
  end
end