# rails appointment:reminder
namespace :appointment do
  desc "This task will be responsible for reminding patients of their appointments."

  task(reminder: :environment) do
    puts "I'm running the task!"
    puts "tengo #{Patient.count} pacientes"
  end
end
