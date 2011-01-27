require 'pp'

module RedmineRemainingTime
  class Hooks < Redmine::Hook::ViewListener
    def view_issues_show_description_bottom(context={})
      issue = context[:issue]
      remaining_time = RemainingTime.find_by_issue_id(issue.id).try(:time) ||
        issue.estimated_hours * (100-issue.done_ratio) / 100
      return "remaining time: #{remaining_time}"
    end
  end
end
