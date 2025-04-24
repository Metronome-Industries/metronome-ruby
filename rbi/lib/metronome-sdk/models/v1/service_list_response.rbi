# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ServiceListResponse < MetronomeSDK::BaseModel
        sig { returns(T::Array[MetronomeSDK::Models::V1::ServiceListResponse::Service]) }
        def services
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::ServiceListResponse::Service])
            .returns(T::Array[MetronomeSDK::Models::V1::ServiceListResponse::Service])
        end
        def services=(_)
        end

        sig { params(services: T::Array[MetronomeSDK::Models::V1::ServiceListResponse::Service]).void }
        def initialize(services:)
        end

        sig { override.returns({services: T::Array[MetronomeSDK::Models::V1::ServiceListResponse::Service]}) }
        def to_hash
        end

        class Service < MetronomeSDK::BaseModel
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

          class Usage < MetronomeSDK::Enum
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
end
