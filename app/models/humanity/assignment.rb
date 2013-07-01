module Humanity
  class Assignment < ActiveRecord::Base
    belongs_to :human, polymorphic: true
    belongs_to :role

    #attr_accessible # none

    scope :by_source, ->(source) { where(source: source) }
  end
end
