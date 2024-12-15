# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class PlanListParams < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute limit
        #   Max number of results that should be returned
        #
        #   @return [Integer]
        optional :limit, Integer

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String]
        optional :next_page, String

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param limit [Integer, nil] Max number of results that should be returned
        #   #
        #   # @param next_page [String, nil] Cursor that indicates where the next page of results should start.
        #   #
        #   def initialize(customer_id:, limit: nil, next_page: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
