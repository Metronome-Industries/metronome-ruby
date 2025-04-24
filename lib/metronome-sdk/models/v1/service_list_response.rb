# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ServiceListResponse < MetronomeSDK::BaseModel
        # @!attribute services
        #
        #   @return [Array<MetronomeSDK::Models::V1::ServiceListResponse::Service>]
        required :services, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::ServiceListResponse::Service] }

        # @!parse
        #   # @param services [Array<MetronomeSDK::Models::V1::ServiceListResponse::Service>]
        #   #
        #   def initialize(services:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Service < MetronomeSDK::BaseModel
          # @!attribute ips
          #
          #   @return [Array<String>]
          required :ips, MetronomeSDK::ArrayOf[String]

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute usage
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage]
          required :usage, enum: -> { MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage }

          # @!parse
          #   # @param ips [Array<String>]
          #   # @param name [String]
          #   # @param usage [Symbol, MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage]
          #   #
          #   def initialize(ips:, name:, usage:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case usage
          # in :makes_connections_from
          #   # ...
          # in :accepts_connections_at
          #   # ...
          # end
          # ```
          class Usage < MetronomeSDK::Enum
            MAKES_CONNECTIONS_FROM = :makes_connections_from
            ACCEPTS_CONNECTIONS_AT = :accepts_connections_at

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
