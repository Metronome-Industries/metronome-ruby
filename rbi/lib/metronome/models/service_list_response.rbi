# typed: strong

module Metronome
  module Models
    class ServiceListResponse < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::ServiceListResponse::Service]) }
      def services
      end

      sig do
        params(_: T::Array[Metronome::Models::ServiceListResponse::Service]).returns(T::Array[Metronome::Models::ServiceListResponse::Service])
      end
      def services=(_)
      end

      sig { params(services: T::Array[Metronome::Models::ServiceListResponse::Service]).void }
      def initialize(services:)
      end

      sig { override.returns({services: T::Array[Metronome::Models::ServiceListResponse::Service]}) }
      def to_hash
      end

      class Service < Metronome::BaseModel
        sig { returns(T::Array[String]) }
        def ips
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def ips=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(Symbol) }
        def usage
        end

        sig { params(_: Symbol).returns(Symbol) }
        def usage=(_)
        end

        sig { params(ips: T::Array[String], name: String, usage: Symbol).void }
        def initialize(ips:, name:, usage:)
        end

        sig { override.returns({ips: T::Array[String], name: String, usage: Symbol}) }
        def to_hash
        end

        class Usage < Metronome::Enum
          abstract!

          MAKES_CONNECTIONS_FROM = :makes_connections_from
          ACCEPTS_CONNECTIONS_AT = :accepts_connections_at

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
