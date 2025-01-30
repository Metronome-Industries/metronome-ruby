# typed: strong

module Metronome
  module Models
    class ServiceListResponse < Metronome::BaseModel
      Shape = T.type_alias { {services: T::Array[Metronome::Models::ServiceListResponse::Service]} }

      sig { returns(T::Array[Metronome::Models::ServiceListResponse::Service]) }
      attr_accessor :services

      sig { params(services: T::Array[Metronome::Models::ServiceListResponse::Service]).void }
      def initialize(services:); end

      sig { returns(Metronome::Models::ServiceListResponse::Shape) }
      def to_h; end

      class Service < Metronome::BaseModel
        Shape = T.type_alias { {ips: T::Array[String], name: String, usage: Symbol} }

        sig { returns(T::Array[String]) }
        attr_accessor :ips

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Symbol) }
        attr_accessor :usage

        sig { params(ips: T::Array[String], name: String, usage: Symbol).void }
        def initialize(ips:, name:, usage:); end

        sig { returns(Metronome::Models::ServiceListResponse::Service::Shape) }
        def to_h; end

        class Usage < Metronome::Enum
          abstract!

          MAKES_CONNECTIONS_FROM = :makes_connections_from
          ACCEPTS_CONNECTIONS_AT = :accepts_connections_at

          sig { returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
