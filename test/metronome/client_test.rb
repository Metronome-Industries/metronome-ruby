# frozen_string_literal: true

require "time"

require_relative "test_helper"

class MetronomeTest < Test::Unit::TestCase
  def test_raises_on_missing_non_nullable_opts
    assert_raise_with_message(ArgumentError, /is required/) do
      Metronome::Client.new
    end
  end

  class MockResponse
    attr_accessor :code, :header, :body, :content_type

    def initialize(code, data, headers)
      self.code = code
      self.header = headers
      self.body = JSON.generate(data)
      self.content_type = "application/json"
    end
  end

  class MockRequester
    attr_accessor :response_code, :response_data, :response_headers, :attempts

    def initialize(response_code, response_data, response_headers)
      self.response_code = response_code
      self.response_data = response_data
      self.response_headers = response_headers
      self.attempts = []
    end

    def execute(req)
      attempts.push(req)
      MockResponse.new(response_code, response_data, response_headers)
    end
  end

  def test_client_default_request_default_retry_attempts
    metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(500, {}, {"x-stainless-mock-sleep" => "true"})
    metronome.requester = requester
    assert_raise(Metronome::HTTP::InternalServerError) do
      metronome.contracts.create(
        {customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", starting_at: "2020-01-01T00:00:00.000Z"}
      )
    end
    assert_equal(3, requester.attempts.length)
  end

  def test_client_given_request_default_retry_attempts
    metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token", max_retries: 3)
    requester = MockRequester.new(500, {}, {"x-stainless-mock-sleep" => "true"})
    metronome.requester = requester
    assert_raise(Metronome::HTTP::InternalServerError) do
      metronome.contracts.create(
        {customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", starting_at: "2020-01-01T00:00:00.000Z"}
      )
    end
    assert_equal(4, requester.attempts.length)
  end

  def test_client_default_request_given_retry_attempts
    metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(500, {}, {"x-stainless-mock-sleep" => "true"})
    metronome.requester = requester
    assert_raise(Metronome::HTTP::InternalServerError) do
      metronome.contracts.create(
        {customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", starting_at: "2020-01-01T00:00:00.000Z"},
        max_retries: 3
      )
    end
    assert_equal(4, requester.attempts.length)
  end

  def test_client_given_request_given_retry_attempts
    metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token", max_retries: 3)
    requester = MockRequester.new(500, {}, {"x-stainless-mock-sleep" => "true"})
    metronome.requester = requester
    assert_raise(Metronome::HTTP::InternalServerError) do
      metronome.contracts.create(
        {customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", starting_at: "2020-01-01T00:00:00.000Z"},
        max_retries: 4
      )
    end
    assert_equal(5, requester.attempts.length)
  end

  def test_client_retry_after_seconds
    metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token", max_retries: 1)
    requester = MockRequester.new(500, {}, {"retry-after" => "1.3", "x-stainless-mock-sleep" => "true"})
    metronome.requester = requester
    assert_raise(Metronome::HTTP::InternalServerError) do
      metronome.contracts.create(
        {customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", starting_at: "2020-01-01T00:00:00.000Z"}
      )
    end
    assert_equal(2, requester.attempts.length)
    assert_equal(requester.attempts.last[:headers]["X-Stainless-Mock-Slept"], 1.3)
  end

  def test_client_retry_after_date
    metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token", max_retries: 1)
    requester = MockRequester.new(500, {}, {"retry-after" => (Time.now + 2).httpdate, "x-stainless-mock-sleep" => "true", "x-stainless-mock-sleep-base" => (Time.now).httpdate})
    metronome.requester = requester
    assert_raise(Metronome::HTTP::InternalServerError) do
      metronome.contracts.create(
        {customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", starting_at: "2020-01-01T00:00:00.000Z"}
      )
    end
    assert_equal(2, requester.attempts.length)
    assert_equal(requester.attempts.last[:headers]["X-Stainless-Mock-Slept"], 2)
  end

  def test_client_retry_after_ms
    metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token", max_retries: 1)
    requester = MockRequester.new(500, {}, {"retry-after-ms" => "1300", "x-stainless-mock-sleep" => "true"})
    metronome.requester = requester
    assert_raise(Metronome::HTTP::InternalServerError) do
      metronome.contracts.create(
        {customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", starting_at: "2020-01-01T00:00:00.000Z"}
      )
    end
    assert_equal(2, requester.attempts.length)
    assert_equal(requester.attempts.last[:headers]["X-Stainless-Mock-Slept"], 1.3)
  end

  def test_default_headers
    metronome = Metronome::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(200, {}, {"x-stainless-mock-sleep" => "true"})
    metronome.requester = requester
    metronome.contracts.create(
      {customer_id: "13117714-3f05-48e5-a6e9-a66093f13b4d", starting_at: "2020-01-01T00:00:00.000Z"}
    )
    headers = requester.attempts[0][:headers]
    assert_not_empty(headers["X-Stainless-Lang"])
    assert_not_empty(headers["X-Stainless-Package-Version"])
    assert_not_empty(headers["X-Stainless-Runtime"])
    assert_not_empty(headers["X-Stainless-Runtime-Version"])
  end
end
