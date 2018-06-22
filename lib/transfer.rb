class Transfer
  attr_accessor
  attr_reader :status, :sender, :receiver, :transfer_amount

  def initialize(sender, receiver, transfer_amount)
      @sender = sender
      @receiver = receiver
      @transfer_amount = transfer_amount
      @status = "pending"
  end

  def valid?
      self.sender.valid? && self.receiver.valid?
  end

end
