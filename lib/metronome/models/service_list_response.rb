# frozen_string_literal: true

module Metronome
  module Models
    class ServiceListResponse < Metronome::BaseModel
      # @!attribute [rw] services
      #   @return [Array<Metronome::Models::ServiceListResponse::Service>]
      required :services, Metronome::ArrayOf.new(-> { Metronome::Models::ServiceListResponse::Service })

      class Service < Metronome::BaseModel
        # @!attribute [rw] ips
        #   @return [Array<String>]
        required :ips, Metronome::ArrayOf.new(String)

        # @!attribute [rw] name
        #   @return [String]
        required :name, String

        # @!attribute [rw] usage
        #   @return [Symbol, Metronome::Models::ServiceListResponse::Service::Usage]
        required :usage, enum: -> { Metronome::Models::ServiceListResponse::Service::Usage }

        class Usage < Metronome::Enum
          MAKES_CONNECTIONS_FROM = :makes_connections_from
          ACCEPTS_CONNECTIONS_AT = :accepts_connections_at
        end

        # @!parse
        #   # Create a new instance of Service from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Array<String>] :ips
        #   #   @option data [String] :name
        #   #   @option data [String] :usage
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of ServiceListResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :services
      #   def initialize(data = {}) = super
    end
  end
end
