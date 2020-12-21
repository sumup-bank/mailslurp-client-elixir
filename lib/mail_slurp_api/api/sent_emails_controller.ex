# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Api.SentEmailsController do
  @moduledoc """
  API calls for all endpoints tagged `SentEmailsController`.
  """

  alias MailSlurpAPI.Connection
  import MailSlurpAPI.RequestBuilder


  @doc """
  Get sent email receipt

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - id (String.t): id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %MailSlurpAPI.Model.SentEmailDto{}} on success
  {:error, info} on failure
  """
  @spec get_sent_email(Tesla.Env.client, String.t, keyword()) :: {:ok, MailSlurpAPI.Model.SentEmailDto.t} | {:error, Tesla.Env.t}
  def get_sent_email(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/sent/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.SentEmailDto{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end

  @doc """
  Get all sent emails in paginated form

  ## Parameters

  - connection (MailSlurpAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :inbox_id (String.t): Optional inboxId to filter sender of sent emails by
    - :page (integer()): Optional page index in inbox sent email list pagination
    - :size (integer()): Optional page size in inbox sent email list pagination
    - :sort (String.t): Optional createdAt sort direction ASC or DESC
  ## Returns

  {:ok, %MailSlurpAPI.Model.PageSentEmailProjection{}} on success
  {:error, info} on failure
  """
  @spec get_sent_emails(Tesla.Env.client, keyword()) :: {:ok, MailSlurpAPI.Model.PageSentEmailProjection.t} | {:error, Tesla.Env.t}
  def get_sent_emails(connection, opts \\ []) do
    optional_params = %{
      :"inboxId" => :query,
      :"page" => :query,
      :"size" => :query,
      :"sort" => :query
    }
    %{}
    |> method(:get)
    |> url("/sent")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %MailSlurpAPI.Model.PageSentEmailProjection{}},
      { 401, false},
      { 403, false},
      { 404, false}
    ])
  end
end
