# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class UsageIngestParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute [r] usage
        #
        #   @return [Array<MetronomeSDK::Models::V1::UsageIngestParams::Usage>, nil]
        optional :usage, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::UsageIngestParams::Usage] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V1::UsageIngestParams::Usage>]
        #   attr_writer :usage

        # @!parse
        #   # @param usage [Array<MetronomeSDK::Models::V1::UsageIngestParams::Usage>]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(usage: nil, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Usage < MetronomeSDK::BaseModel
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

          # @!attribute [r] properties
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :properties, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

          # @!parse
          #   # @return [Hash{Symbol=>Object}]
          #   attr_writer :properties

          # @!parse
          #   # @param customer_id [String]
          #   # @param event_type [String]
          #   # @param timestamp [String]
          #   # @param transaction_id [String]
          #   # @param properties [Hash{Symbol=>Object}]
          #   #
          #   def initialize(customer_id:, event_type:, timestamp:, transaction_id:, properties: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
