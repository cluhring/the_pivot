class ReservationMailer < ApplicationMailer
  def notify(host_id, guest_id)
    @guest_name = User.find(guest_id).first_name
    host = User.find(host_id)
    @host_name = host.first_name
    mail(to: host.email, subject: "You have a Vagabond waiting for approval!")
  end
end
