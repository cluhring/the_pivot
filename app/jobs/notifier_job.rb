class NotifierJob < ActiveJob::Base
  include Sidekiq::Worker
  queue_as :default

  def perform(host, guest)
    ReservationMailer.notify(host, guest).deliver_now
  end
end
