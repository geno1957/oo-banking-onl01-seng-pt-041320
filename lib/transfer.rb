class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status, :count 
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount 
    @status = "pending"
  end 
    
     def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end
  
  def execute_transfer
    if @sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      @status = "complete"
  
  
end
