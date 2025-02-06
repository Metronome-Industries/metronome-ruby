# typed: strong

module Metronome
  class Client < Metronome::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :bearer_token

    sig { returns(Metronome::Resources::Alerts) }
    attr_reader :alerts

    sig { returns(Metronome::Resources::Plans) }
    attr_reader :plans

    sig { returns(Metronome::Resources::CreditGrants) }
    attr_reader :credit_grants

    sig { returns(Metronome::Resources::PricingUnits) }
    attr_reader :pricing_units

    sig { returns(Metronome::Resources::Customers) }
    attr_reader :customers

    sig { returns(Metronome::Resources::Dashboards) }
    attr_reader :dashboards

    sig { returns(Metronome::Resources::Usage) }
    attr_reader :usage

    sig { returns(Metronome::Resources::AuditLogs) }
    attr_reader :audit_logs

    sig { returns(Metronome::Resources::CustomFields) }
    attr_reader :custom_fields

    sig { returns(Metronome::Resources::BillableMetrics) }
    attr_reader :billable_metrics

    sig { returns(Metronome::Resources::Services) }
    attr_reader :services

    sig { returns(Metronome::Resources::Invoices) }
    attr_reader :invoices

    sig { returns(Metronome::Resources::Contracts) }
    attr_reader :contracts

    sig { returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig do
      params(
        base_url: T.nilable(String),
        bearer_token: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).void
    end
    def initialize(
      base_url: nil,
      bearer_token: ENV["METRONOME_BEARER_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
