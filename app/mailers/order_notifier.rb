class OrderNotifier < ActionMailer::Base
  default from: 'Tim Smith <tim.smith.hdg@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.recieved.subject
  #
    
  def recieved(order)
      @order = order
      mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped
      @order = order
      mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
