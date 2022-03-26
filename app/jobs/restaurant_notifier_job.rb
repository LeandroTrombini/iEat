class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(customer_id)
    user = User.find(customer_id)
    puts 'Hello from Sidekiq'
    puts "Pedico criado por #{user.email}"
  end
end
