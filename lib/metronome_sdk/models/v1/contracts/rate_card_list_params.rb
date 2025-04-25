# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#list
        class RateCardListParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute limit
          #   Max number of results that should be returned
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute next_page
          #   Cursor that indicates where the next page of results should start.
          #
          #   @return [String, nil]
          optional :next_page, String

          # @!attribute body
          #
          #   @return [Object, nil]
          optional :body, MetronomeSDK::Internal::Type::Unknown

          # @!method initialize(limit: nil, next_page: nil, body: nil, request_options: {})
          #   @param limit [Integer] Max number of results that should be returned
          #
          #   @param next_page [String] Cursor that indicates where the next page of results should start.
          #
          #   @param body [Object]
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
