# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ServiceListResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig do
          returns(
            T::Array[MetronomeSDK::Models::V1::ServiceListResponse::Service]
          )
        end
        attr_accessor :services

        sig do
          params(
            services:
              T::Array[
                MetronomeSDK::Models::V1::ServiceListResponse::Service::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(services:)
        end

        sig do
          override.returns(
            {
              services:
                T::Array[MetronomeSDK::Models::V1::ServiceListResponse::Service]
            }
          )
        end
        def to_hash
        end

        class Service < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

          sig { returns(T::Array[String]) }
          attr_accessor :ips

          sig { returns(String) }
          attr_accessor :name

          sig do
            returns(
              MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage::TaggedSymbol
            )
          end
          attr_accessor :usage

          sig do
            params(
              ips: T::Array[String],
              name: String,
              usage:
                MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(ips:, name:, usage:)
          end

          sig do
            override.returns(
              {
                ips: T::Array[String],
                name: String,
                usage:
                  MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Usage
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MAKES_CONNECTIONS_FROM =
              T.let(
                :makes_connections_from,
                MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage::TaggedSymbol
              )
            ACCEPTS_CONNECTIONS_AT =
              T.let(
                :accepts_connections_at,
                MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::ServiceListResponse::Service::Usage::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
