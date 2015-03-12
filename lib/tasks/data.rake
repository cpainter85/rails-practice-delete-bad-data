namespace :data do
  desc 'This will delete all orphaned data'
  task clean: :environment do
    Assignment.where.not(person_id: Person.pluck(:id)).destroy_all
    Assignment.where.not(location_id: Location.pluck(:id)).destroy_all
  end
end
