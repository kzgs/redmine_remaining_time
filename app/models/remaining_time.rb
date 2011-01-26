class RemainingTime < ActiveRecord::Base
  unloadable

  belongs_to :issue
end
