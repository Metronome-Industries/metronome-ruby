# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      # @example
      # ```ruby
      # alert_list_response => {
      #   data: -> { Metronome::ArrayOf[Metronome::Models::Customers::CustomerAlert] === _1 },
      #   next_page: String
      # }
      # ```
      class AlertListResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Array<Metronome::Models::Customers::CustomerAlert>]
        required :data, -> { Metronome::ArrayOf[Metronome::Models::Customers::CustomerAlert] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String

        # @!parse
        #   # @param data [Array<Metronome::Models::Customers::CustomerAlert>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
