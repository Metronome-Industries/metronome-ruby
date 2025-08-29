# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Usage#ingest
      class UsageIngestParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute usage
        #
        #   @return [Array<MetronomeSDK::Models::V1::UsageIngestParams::Usage>, nil]
        optional :usage, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::UsageIngestParams::Usage] }

        # @!method initialize(usage: nil, request_options: {})
        #   @param usage [Array<MetronomeSDK::Models::V1::UsageIngestParams::Usage>]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class Usage < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute event_type
          #
          #   @return [String]
          required :event_type, String

          # @!attribute timestamp
          #   RFC 3339 formatted
          #
          #   @return [String]
          required :timestamp, String

          # @!attribute transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute properties
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

          # @!method initialize(customer_id:, event_type:, timestamp:, transaction_id:, properties: nil)
          #   @param customer_id [String]
          #
          #   @param event_type [String]
          #
          #   @param timestamp [String] RFC 3339 formatted
          #
          #   @param transaction_id [String]
          #
          #   @param properties [Hash{Symbol=>Object}]
        end
      end
    end
  end
end
