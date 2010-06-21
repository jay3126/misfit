class GeneralLedgerReport < Report
  attr_accessor :from_date, :to_date, :account, :account_id, :journal,:posting

  def initialize(params,dates, user)
    @from_date = (dates and dates[:from_date]) ? dates[:from_date] : Date.min_date
    @to_date   = (dates and dates[:to_date]) ? dates[:to_date] : Date.today
    @name      = "General Ledger"
    get_parameters(params, user)
  end

  def name
    "General Ledger"
  end

  def self.name
    "General Ledger"
  end

  def generate
    Journal.all
  end
end   
