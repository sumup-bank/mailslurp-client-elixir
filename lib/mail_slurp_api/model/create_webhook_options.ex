# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.CreateWebhookOptions do
  @moduledoc """
  Options for creating a webhook. Webhooks can be attached to inboxes and MailSlurp will POST a webhook payload to the URL specified whenever the inbox receives an email. Webhooks are great for processing many inbound emails.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"basicAuth",
    :"name",
    :"url"
  ]

  @type t :: %__MODULE__{
    :"basicAuth" => BasicAuthOptions | nil,
    :"name" => String.t | nil,
    :"url" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.CreateWebhookOptions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"basicAuth", :struct, MailSlurpAPI.Model.BasicAuthOptions, options)
  end
end

