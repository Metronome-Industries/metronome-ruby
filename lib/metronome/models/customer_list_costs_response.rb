# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListCostsResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CustomerListCostsResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CustomerListCostsResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] credit_types
        #   @return [Hash]
        required :credit_types, Hash

        # @!attribute [rw] end_timestamp
        #   @return [String]
        required :end_timestamp, String

        # @!attribute [rw] start_timestamp
        #   @return [String]
        required :start_timestamp, String

        class CreditType < BaseModel
          # @!attribute [rw] cost
          #   @return [Float]
          optional :cost, Float

          # @!attribute [rw] line_item_breakdown
          #   @return [Array<Metronome::Models::CustomerListCostsResponse::Data::CreditTypes::CreditType::LineItemBreakdown>]
          optional :line_item_breakdown,
                   Metronome::ArrayOf.new(-> { Metronome::Models::CustomerListCostsResponse::Data::CreditTypes::CreditType::LineItemBreakdown })

          # @!attribute [rw] name_
          #   @return [String]
          optional :name_, String

          class LineItemBreakdown < BaseModel
            # @!attribute [rw] cost
            #   @return [Float]
            required :cost, Float

            # @!attribute [rw] name_
            #   @return [String]
            required :name_, String

            # @!attribute [rw] group_key
            #   @return [String]
            optional :group_key, String

            # @!attribute [rw] group_value
            #   @return [String]
            optional :group_value, String
          end
        end
      end
    end
  end
end
