# frozen_string_literal: true

module Metronome
  module Models
    class ServiceListResponse < BaseModel
      # @!attribute [rw] services
      #   @return [Array<Metronome::Models::ServiceListResponse::Service>]
      required :services, Metronome::ArrayOf.new(-> { Metronome::Models::ServiceListResponse::Service })

      class Service < BaseModel
        # @!attribute [rw] ips
        #   @return [Array<String>]
        required :ips, Metronome::ArrayOf.new(String)

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] usage
        #   @return [Symbol, Metronome::Models::ServiceListResponse::Service::Usage]
        required :usage, enum: -> { Metronome::Models::ServiceListResponse::Service::Usage }

        class Usage < Metronome::Enum
          MAKES_CONNECTIONS_FROM = :makes_connections_from
          ACCEPTS_CONNECTIONS_AT = :accepts_connections_at
        end
      end
    end
  end
end
