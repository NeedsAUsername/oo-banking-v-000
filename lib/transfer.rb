class Transfer
  attr_accessor
  attr_reader :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"
  end

  def valid?
      self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
      if self.valid?
          self.sender.balance -= self.amount
          self.receiver.balance += self.amount
          self.amount = 0
      end 
  end

end
