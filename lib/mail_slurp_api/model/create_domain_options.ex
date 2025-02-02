# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.CreateDomainOptions do
  @moduledoc """
  Options for creating a domain to use with MailSlurp. You must have ownership access to this domain in order to verify it. Domains will not functionally currently until the domain has been verified. See https://www.mailslurp.com/guides/custom-domains for help.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"createdCatchAllInbox",
    :"description",
    :"domain"
  ]

  @type t :: %__MODULE__{
    :"createdCatchAllInbox" => boolean() | nil,
    :"description" => String.t | nil,
    :"domain" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.CreateDomainOptions do
  def decode(value, _options) do
    value
  end
end

