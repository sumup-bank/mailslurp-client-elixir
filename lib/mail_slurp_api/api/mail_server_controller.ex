# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.MailServerController do
  @moduledoc """
  API calls for all endpoints tagged `MailServerController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Get DNS Mail Server records for a domain

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - describe_options (DescribeDomainOptions): describeOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.DescribeMailServerDomainResult{}} on success
  {:error, info} on failure
  """
  @spec describe_mail_server_domain(Tesla.Env.client, MailSlurpAPI.Model.DescribeDomainOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.DescribeMailServerDomainResult.t} | {:error, Tesla.Env.t}
  def describe_mail_server_domain(connection, describe_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/mail-server/describe/domain")
    |> add_param(:body, :body, describe_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.DescribeMailServerDomainResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Verify the existence of an email address at a given mail server.

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - verify_options (VerifyEmailAddressOptions): verifyOptions
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.EmailVerificationResult{}} on success
  {:error, info} on failure
  """
  @spec verify_email_address(Tesla.Env.client, MailSlurpAPI.Model.VerifyEmailAddressOptions.t, keyword()) :: {:ok, MailSlurpAPI.Model.EmailVerificationResult.t} | {:error, Tesla.Env.t}
  def verify_email_address(connection, verify_options, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/mail-server/verify/email-address")
    |> add_param(:body, :body, verify_options)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.EmailVerificationResult{}},
      { 201, false},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end
end
