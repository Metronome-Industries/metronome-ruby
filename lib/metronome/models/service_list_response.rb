# frozen_string_literal: true

module Metronome
  module Models
    class ServiceListResponse < Metronome::BaseModel
      # @!attribute services
      #
      #   @return [Array<Metronome::Models::ServiceListResponse::Service>]
      required :services, Metronome::ArrayOf[-> { Metronome::Models::ServiceListResponse::Service }]

      # @!parse
      #   # @param services [Array<Metronome::Models::ServiceListResponse::Service>]
      #   #
      #   def initialize(services:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Service < Metronome::BaseModel
        # @!attribute ips
        #
        #   @return [Array<String>]
        required :ips, Metronome::ArrayOf[String]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute usage
        #
        #   @return [Symbol, Metronome::Models::ServiceListResponse::Service::Usage]
        required :usage, enum: -> { Metronome::Models::ServiceListResponse::Service::Usage }

        # @!parse
        #   # @param ips [Array<String>]
        #   # @param name [String]
        #   # @param usage [String]
        #   #
        #   def initialize(ips:, name:, usage:) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :makes_connections_from
        #   # ...
        # in :accepts_connections_at
        #   # ...
        # end
        # ```
        class Usage < Metronome::Enum
          MAKES_CONNECTIONS_FROM = :makes_connections_from
          ACCEPTS_CONNECTIONS_AT = :accepts_connections_at
        end
      end
    end
  end
end
