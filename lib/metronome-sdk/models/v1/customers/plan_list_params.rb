# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class PlanListParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute [r] limit
          #   Max number of results that should be returned
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :limit

          # @!attribute [r] next_page
          #   Cursor that indicates where the next page of results should start.
          #
          #   @return [String, nil]
          optional :next_page, String

          # @!parse
          #   # @return [String]
          #   attr_writer :next_page

          # @!parse
          #   # @param customer_id [String]
          #   # @param limit [Integer]
          #   # @param next_page [String]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(customer_id:, limit: nil, next_page: nil, request_options: {}, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
