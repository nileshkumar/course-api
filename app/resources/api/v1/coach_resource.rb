module Api
  module V1
     class CoachResource < JSONAPI::Resource
        attributes :name
        has_one :course
        # filter :course
     end
   end
end

=begin
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{ "data": { "type": "coaches", "relationships": { "course": { "data": { "type": "courses", "id": "5" } } }, "attributes": { "name": "Sam" } } }' http://localhost:3000/coaches
=end
