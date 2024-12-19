# frozen_string_literal: true

module Metronome
  module Models
    class ContractScheduleProServicesInvoiceResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::Customers::Invoice>]
      required :data, Metronome::ArrayOf[-> { Metronome::Models::Customers::Invoice }]

      # @!parse
      #   # @param data [Array<Metronome::Models::Customers::Invoice>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
