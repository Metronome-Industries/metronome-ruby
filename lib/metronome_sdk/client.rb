# frozen_string_literal: true

module MetronomeSDK
  class Client < MetronomeSDK::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :bearer_token

    # @return [String, nil]
    attr_reader :webhook_secret

    # @return [MetronomeSDK::Resources::V2]
    attr_reader :v2

    # @return [MetronomeSDK::Resources::V1]
    attr_reader :v1

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @bearer_token.nil?

      {"authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param bearer_token [String, nil] Defaults to `ENV["METRONOME_BEARER_TOKEN"]`
    #
    # @param webhook_secret [String, nil] Defaults to `ENV["METRONOME_WEBHOOK_SECRET"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["METRONOME_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      bearer_token: ENV["METRONOME_BEARER_TOKEN"],
      webhook_secret: ENV["METRONOME_WEBHOOK_SECRET"],
      base_url: ENV["METRONOME_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.metronome.com"

      if bearer_token.nil?
        raise ArgumentError.new("bearer_token is required, and can be set via environ: \"METRONOME_BEARER_TOKEN\"")
      end

      headers = {}
      custom_headers_env = ENV["METRONOME_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @bearer_token = bearer_token.to_s
      @webhook_secret = webhook_secret&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @v2 = MetronomeSDK::Resources::V2.new(client: self)
      @v1 = MetronomeSDK::Resources::V1.new(client: self)
    end
  end
end
