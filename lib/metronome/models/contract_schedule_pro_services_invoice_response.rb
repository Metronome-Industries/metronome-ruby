# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # contract_schedule_pro_services_invoice_response => {
    #   data: -> { Metronome::ArrayOf[Metronome::Models::Customers::Invoice] === _1 }
    # }
    # ```
    class ContractScheduleProServicesInvoiceResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::Customers::Invoice>]
      required :data, -> { Metronome::ArrayOf[Metronome::Models::Customers::Invoice] }

      # @!parse
      #   # @param data [Array<Metronome::Models::Customers::Invoice>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
