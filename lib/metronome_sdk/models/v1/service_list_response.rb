# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Services#list
      class ServiceListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute services
        #
        #   @return [Array<MetronomeSDK::Models::V1::ServiceListResponse::Service>]
        required :services,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::ServiceListResponse::Service] }

        # @!method initialize(services:)
        #   @param services [Array<MetronomeSDK::Models::V1::ServiceListResponse::Service>]

        class Service < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute ips
          #
          #   @return [Array<String>]
          required :ips, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute usage
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage]
          required :usage, enum: -> { MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage }

          # @!method initialize(ips:, name:, usage:)
          #   @param ips [Array<String>]
          #   @param name [String]
          #   @param usage [Symbol, MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage]

          # @see MetronomeSDK::Models::V1::ServiceListResponse::Service#usage
          module Usage
            extend MetronomeSDK::Internal::Type::Enum

            MAKES_CONNECTIONS_FROM = :makes_connections_from
            ACCEPTS_CONNECTIONS_AT = :accepts_connections_at

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
