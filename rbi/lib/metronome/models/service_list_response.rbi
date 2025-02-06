# typed: strong

module Metronome
  module Models
    class ServiceListResponse < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::ServiceListResponse::Service]) }
      attr_accessor :services

      sig { params(services: T::Array[Metronome::Models::ServiceListResponse::Service]).void }
      def initialize(services:); end

      sig { override.returns({services: T::Array[Metronome::Models::ServiceListResponse::Service]}) }
      def to_hash; end

      class Service < Metronome::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :ips

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Symbol) }
        attr_accessor :usage

        sig { params(ips: T::Array[String], name: String, usage: Symbol).void }
        def initialize(ips:, name:, usage:); end

        sig { override.returns({ips: T::Array[String], name: String, usage: Symbol}) }
        def to_hash; end

        class Usage < Metronome::Enum
          abstract!

          MAKES_CONNECTIONS_FROM = :makes_connections_from
          ACCEPTS_CONNECTIONS_AT = :accepts_connections_at

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
