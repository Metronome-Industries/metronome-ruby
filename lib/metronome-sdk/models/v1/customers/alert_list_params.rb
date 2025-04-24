# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class AlertListParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute customer_id
          #   The Metronome ID of the customer
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute [r] next_page
          #   Cursor that indicates where the next page of results should start.
          #
          #   @return [String, nil]
          optional :next_page, String

          # @!parse
          #   # @return [String]
          #   attr_writer :next_page

          # @!attribute [r] alert_statuses
          #   Optionally filter by alert status. If absent, only enabled alerts will be
          #     returned.
          #
          #   @return [Array<Symbol, MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus>, nil]
          optional :alert_statuses,
                   -> { MetronomeSDK::ArrayOf[enum: MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus] }

          # @!parse
          #   # @return [Array<Symbol, MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus>]
          #   attr_writer :alert_statuses

          # @!parse
          #   # @param customer_id [String]
          #   # @param next_page [String]
          #   # @param alert_statuses [Array<Symbol, MetronomeSDK::Models::V1::Customers::AlertListParams::AlertStatus>]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(customer_id:, next_page: nil, alert_statuses: nil, request_options: {}, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case alert_status
          # in :ENABLED
          #   # ...
          # in :DISABLED
          #   # ...
          # in :ARCHIVED
          #   # ...
          # end
          # ```
          class AlertStatus < MetronomeSDK::Enum
            ENABLED = :ENABLED
            DISABLED = :DISABLED
            ARCHIVED = :ARCHIVED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
