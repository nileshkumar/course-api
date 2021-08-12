module Api
  module V1
     class ActivityResource < JSONAPI::Resource
        attributes :name

        has_one :course

     end
  end
end


=begin
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{ "data": { "type": "activities", "relationships": { "course": { "data": { "type": "courses", "id": "1" } } }, "attributes": { "name": "game activities" } } }' http://localhost:3000/activities
=end
