class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order_confirmation.subject
  #
  def order_confirmation(order)
    @order = order

    mail(to: @order.email, subject: "Order ##{order.id} Confirmation")
  end
end
