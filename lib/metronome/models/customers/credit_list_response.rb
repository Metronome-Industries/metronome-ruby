# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      # @example
      # ```ruby
      # credit_list_response => {
      #   data: -> { Metronome::ArrayOf[Metronome::Models::Credit] === _1 },
      #   next_page: String
      # }
      # ```
      class CreditListResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Array<Metronome::Models::Credit>]
        required :data, -> { Metronome::ArrayOf[Metronome::Models::Credit] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!parse
        #   # @param data [Array<Metronome::Models::Credit>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
