module Api
  module V1
     class CourseResource < JSONAPI::Resource
        attributes :name, :self_assignable

        has_many :activities
        has_one :coach
      end
    end
end
