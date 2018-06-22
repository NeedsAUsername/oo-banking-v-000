class Transfer
  attr_accessor
  attr_reader :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = transfer_amount
      @status = "pending"
  end

  def valid?
      self.sender.valid? && self.receiver.valid?
  end

end
