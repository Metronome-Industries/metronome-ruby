# typed: strong

module MetronomeSDK
  module Models
    module V1
      class AuditLogListResponse < MetronomeSDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(MetronomeSDK::Models::V1::AuditLogListResponse::Request) }
        def request
        end

        sig do
          params(_: MetronomeSDK::Models::V1::AuditLogListResponse::Request)
            .returns(MetronomeSDK::Models::V1::AuditLogListResponse::Request)
        end
        def request=(_)
        end

        sig { returns(Time) }
        def timestamp
        end

        sig { params(_: Time).returns(Time) }
        def timestamp=(_)
        end

        sig { returns(T.nilable(String)) }
        def action
        end

        sig { params(_: String).returns(String) }
        def action=(_)
        end

        sig { returns(T.nilable(MetronomeSDK::Models::V1::AuditLogListResponse::Actor)) }
        def actor
        end

        sig do
          params(_: MetronomeSDK::Models::V1::AuditLogListResponse::Actor)
            .returns(MetronomeSDK::Models::V1::AuditLogListResponse::Actor)
        end
        def actor=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(String)) }
        def resource_id
        end

        sig { params(_: String).returns(String) }
        def resource_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def resource_type
        end

        sig { params(_: String).returns(String) }
        def resource_type=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig do
          params(
            id: String,
            request: MetronomeSDK::Models::V1::AuditLogListResponse::Request,
            timestamp: Time,
            action: String,
            actor: MetronomeSDK::Models::V1::AuditLogListResponse::Actor,
            description: String,
            resource_id: String,
            resource_type: String,
            status: Symbol
          )
            .void
        end
        def initialize(
          id:,
          request:,
          timestamp:,
          action: nil,
          actor: nil,
          description: nil,
          resource_id: nil,
          resource_type: nil,
          status: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                request: MetronomeSDK::Models::V1::AuditLogListResponse::Request,
                timestamp: Time,
                action: String,
                actor: MetronomeSDK::Models::V1::AuditLogListResponse::Actor,
                description: String,
                resource_id: String,
                resource_type: String,
                status: Symbol
              }
            )
        end
        def to_hash
        end

        class Request < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(T.nilable(String)) }
          def ip
          end

          sig { params(_: String).returns(String) }
          def ip=(_)
          end

          sig { returns(T.nilable(String)) }
          def user_agent
          end

          sig { params(_: String).returns(String) }
          def user_agent=(_)
          end

          sig { params(id: String, ip: String, user_agent: String).void }
          def initialize(id:, ip: nil, user_agent: nil)
          end

          sig { override.returns({id: String, ip: String, user_agent: String}) }
          def to_hash
          end
        end

        class Actor < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T.nilable(String)) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          sig { params(id: String, name: String, email: String).void }
          def initialize(id:, name:, email: nil)
          end

          sig { override.returns({id: String, name: String, email: String}) }
          def to_hash
          end
        end

        class Status < MetronomeSDK::Enum
          abstract!

          SUCCESS = :success
          FAILURE = :failure
          PENDING = :pending

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
