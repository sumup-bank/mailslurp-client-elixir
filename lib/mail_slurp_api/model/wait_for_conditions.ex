# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WaitForConditions do
  @moduledoc """
  Conditions that a &#x60;waitForXEmails&#x60; endpoint operates on. The methods wait until given conditions are met or a timeout is reached. If the conditions are met without needing to wait the results will be returned immediately.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"count",
    :"countType",
    :"inboxId",
    :"matches",
    :"sortDirection",
    :"timeout",
    :"unreadOnly"
  ]

  @type t :: %__MODULE__{
    :"count" => integer() | nil,
    :"countType" => String.t | nil,
    :"inboxId" => String.t | nil,
    :"matches" => [MatchOption] | nil,
    :"sortDirection" => String.t | nil,
    :"timeout" => integer() | nil,
    :"unreadOnly" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WaitForConditions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"matches", :list, MailSlurpAPI.Model.MatchOption, options)
  end
end

