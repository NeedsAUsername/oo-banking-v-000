class Transfer
  attr_accessor
  attr_reader :status, :sender, :receiver, :transfer_amount

  def initialize(sender, receiver, transfer_amount)
      @status = "pending"
  end

  def valid?
      self.sender.status == "open" && self.receiver.status == "open"
  end 

end
