# frozen_string_literal: true

module Metronome
  class Client < Metronome::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Client option
    # @return [String]
    attr_reader :bearer_token

    # @return [Metronome::Resources::Alerts]
    attr_reader :alerts

    # @return [Metronome::Resources::Plans]
    attr_reader :plans

    # @return [Metronome::Resources::CreditGrants]
    attr_reader :credit_grants

    # @return [Metronome::Resources::Customers]
    attr_reader :customers

    # @return [Metronome::Resources::Dashboards]
    attr_reader :dashboards

    # @return [Metronome::Resources::Usage]
    attr_reader :usage

    # @return [Metronome::Resources::AuditLogs]
    attr_reader :audit_logs

    # @return [Metronome::Resources::CustomFields]
    attr_reader :custom_fields

    # @return [Metronome::Resources::BillableMetrics]
    attr_reader :billable_metrics

    # @return [Metronome::Resources::Services]
    attr_reader :services

    # @return [Metronome::Resources::Invoices]
    attr_reader :invoices

    # @return [Metronome::Resources::Contracts]
    attr_reader :contracts

    # @private
    #
    # @return [Hash{String => String}]
    #
    private def auth_headers
      {"Authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    #
    # @param bearer_token [String, nil] Defaults to `ENV["METRONOME_BEARER_TOKEN"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    def initialize(
      base_url: nil,
      bearer_token: ENV["METRONOME_BEARER_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.metronome.com/v1"

      if bearer_token.nil?
        raise ArgumentError.new("bearer_token is required")
      end

      @bearer_token = bearer_token.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @alerts = Metronome::Resources::Alerts.new(client: self)
      @plans = Metronome::Resources::Plans.new(client: self)
      @credit_grants = Metronome::Resources::CreditGrants.new(client: self)
      @customers = Metronome::Resources::Customers.new(client: self)
      @dashboards = Metronome::Resources::Dashboards.new(client: self)
      @usage = Metronome::Resources::Usage.new(client: self)
      @audit_logs = Metronome::Resources::AuditLogs.new(client: self)
      @custom_fields = Metronome::Resources::CustomFields.new(client: self)
      @billable_metrics = Metronome::Resources::BillableMetrics.new(client: self)
      @services = Metronome::Resources::Services.new(client: self)
      @invoices = Metronome::Resources::Invoices.new(client: self)
      @contracts = Metronome::Resources::Contracts.new(client: self)
    end
  end
end
