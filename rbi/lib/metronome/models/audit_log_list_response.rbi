# typed: strong

module Metronome
  module Models
    class AuditLogListResponse < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Metronome::Models::AuditLogListResponse::Request) }
      attr_accessor :request

      sig { returns(Time) }
      attr_accessor :timestamp

      sig { returns(T.nilable(String)) }
      attr_reader :action

      sig { params(action: String).void }
      attr_writer :action

      sig { returns(T.nilable(Metronome::Models::AuditLogListResponse::Actor)) }
      attr_reader :actor

      sig { params(actor: Metronome::Models::AuditLogListResponse::Actor).void }
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

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          id: String,
          request: Metronome::Models::AuditLogListResponse::Request,
          timestamp: Time,
          action: String,
          actor: Metronome::Models::AuditLogListResponse::Actor,
          description: String,
          resource_id: String,
          resource_type: String,
          status: Symbol
        ).void
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
        override.returns(
          {
            id: String,
            request: Metronome::Models::AuditLogListResponse::Request,
            timestamp: Time,
            action: String,
            actor: Metronome::Models::AuditLogListResponse::Actor,
            description: String,
            resource_id: String,
            resource_type: String,
            status: Symbol
          }
        )
      end
      def to_hash
      end

      class Request < Metronome::BaseModel
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

        sig { params(id: String, ip: String, user_agent: String).void }
        def initialize(id:, ip: nil, user_agent: nil)
        end

        sig { override.returns({id: String, ip: String, user_agent: String}) }
        def to_hash
        end
      end

      class Actor < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { params(id: String, name: String, email: String).void }
        def initialize(id:, name:, email: nil)
        end

        sig { override.returns({id: String, name: String, email: String}) }
        def to_hash
        end
      end

      class Status < Metronome::Enum
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
