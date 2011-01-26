module RedmineRemainingTime
  class Hooks < Redmine::Hook::ViewListener
    def view_issues_show_description_bottom(contest={})
      return "remaining time: "
    end
  end
end
