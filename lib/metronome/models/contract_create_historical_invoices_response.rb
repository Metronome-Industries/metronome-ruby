# frozen_string_literal: true

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::Customers::Invoice>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Customers::Invoice })

      # @!parse
      #   # @param data [Array<Object>]
      #   #
      #   def initialize(data:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
