# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # service_list_response => {
    #   services: -> { Metronome::ArrayOf[Metronome::Models::ServiceListResponse::Service] === _1 }
    # }
    # ```
    class ServiceListResponse < Metronome::BaseModel
      # @!attribute services
      #
      #   @return [Array<Metronome::Models::ServiceListResponse::Service>]
      required :services, -> { Metronome::ArrayOf[Metronome::Models::ServiceListResponse::Service] }

      # @!parse
      #   # @param services [Array<Metronome::Models::ServiceListResponse::Service>]
      #   #
      #   def initialize(services:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      #
      # ```ruby
      # service => {
      #   ips: -> { Metronome::ArrayOf[String] === _1 },
      #   name: String,
      #   usage: enum: Metronome::Models::ServiceListResponse::Service::Usage
      # }
      # ```
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
        #   def initialize(ips:, name:, usage:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case usage
        # in :makes_connections_from
        #   # ...
        # in :accepts_connections_at
        #   # ...
        # end
        # ```
        class Usage < Metronome::Enum
          MAKES_CONNECTIONS_FROM = :makes_connections_from
          ACCEPTS_CONNECTIONS_AT = :accepts_connections_at

          finalize!
        end
      end
    end
  end
end
