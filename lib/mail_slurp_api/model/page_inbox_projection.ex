# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.PageInboxProjection do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content",
    :"empty",
    :"first",
    :"last",
    :"number",
    :"numberOfElements",
    :"pageable",
    :"size",
    :"sort",
    :"totalElements",
    :"totalPages"
  ]

  @type t :: %__MODULE__{
    :"content" => [InboxProjection] | nil,
    :"empty" => boolean() | nil,
    :"first" => boolean() | nil,
    :"last" => boolean() | nil,
    :"number" => integer() | nil,
    :"numberOfElements" => integer() | nil,
    :"pageable" => Pageable | nil,
    :"size" => integer() | nil,
    :"sort" => Sort | nil,
    :"totalElements" => integer() | nil,
    :"totalPages" => integer() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.PageInboxProjection do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"content", :list, MailSlurpAPI.Model.InboxProjection, options)
    |> deserialize(:"pageable", :struct, MailSlurpAPI.Model.Pageable, options)
    |> deserialize(:"sort", :struct, MailSlurpAPI.Model.Sort, options)
  end
end

