# typed: strong

module MetronomeSDK
  module Models
    module V1
      class AuditLogListResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(MetronomeSDK::Models::V1::AuditLogListResponse::Request) }
        attr_reader :request

        sig do
          params(
            request: T.any(MetronomeSDK::Models::V1::AuditLogListResponse::Request, MetronomeSDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :request

        sig { returns(Time) }
        attr_accessor :timestamp

        sig { returns(T.nilable(String)) }
        attr_reader :action

        sig { params(action: String).void }
        attr_writer :action

        sig { returns(T.nilable(MetronomeSDK::Models::V1::AuditLogListResponse::Actor)) }
        attr_reader :actor

        sig do
          params(
            actor: T.any(MetronomeSDK::Models::V1::AuditLogListResponse::Actor, MetronomeSDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :actor

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :resource_id

        sig { params(resource_id: String).void }
        attr_writer :resource_id

        sig { returns(T.nilable(String)) }
        attr_reader :resource_type

        sig { params(resource_type: String).void }
        attr_writer :resource_type

        sig { returns(T.nilable(MetronomeSDK::Models::V1::AuditLogListResponse::Status::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: MetronomeSDK::Models::V1::AuditLogListResponse::Status::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            id: String,
            request: T.any(MetronomeSDK::Models::V1::AuditLogListResponse::Request, MetronomeSDK::Internal::AnyHash),
            timestamp: Time,
            action: String,
            actor: T.any(MetronomeSDK::Models::V1::AuditLogListResponse::Actor, MetronomeSDK::Internal::AnyHash),
            description: String,
            resource_id: String,
            resource_type: String,
            status: MetronomeSDK::Models::V1::AuditLogListResponse::Status::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          request:,
          timestamp:,
          action: nil,
          actor: nil,
          description: nil,
          resource_id: nil,
          resource_type: nil,
          status: nil
        ); end
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
                status: MetronomeSDK::Models::V1::AuditLogListResponse::Status::TaggedSymbol
              }
            )
        end
        def to_hash; end

        class Request < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_reader :ip

          sig { params(ip: String).void }
          attr_writer :ip

          sig { returns(T.nilable(String)) }
          attr_reader :user_agent

          sig { params(user_agent: String).void }
          attr_writer :user_agent

          sig { params(id: String, ip: String, user_agent: String).returns(T.attached_class) }
          def self.new(id:, ip: nil, user_agent: nil); end

          sig { override.returns({id: String, ip: String, user_agent: String}) }
          def to_hash; end
        end

        class Actor < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          sig { params(id: String, name: String, email: String).returns(T.attached_class) }
          def self.new(id:, name:, email: nil); end

          sig { override.returns({id: String, name: String, email: String}) }
          def to_hash; end
        end

        module Status
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::AuditLogListResponse::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUCCESS = T.let(:success, MetronomeSDK::Models::V1::AuditLogListResponse::Status::TaggedSymbol)
          FAILURE = T.let(:failure, MetronomeSDK::Models::V1::AuditLogListResponse::Status::TaggedSymbol)
          PENDING = T.let(:pending, MetronomeSDK::Models::V1::AuditLogListResponse::Status::TaggedSymbol)

          sig { override.returns(T::Array[MetronomeSDK::Models::V1::AuditLogListResponse::Status::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
