# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityType do
  @moduledoc """
  A generic type description for an entity.

  ## Attributes

  *   `basedOnMention` (*type:* `integer()`, *default:* `nil`) - This field can be used to specify if the entity type has been annotated or predicted from a specific mention of the entity. However, the entity type does still apply to the entity as a whole, and not just a specific mention.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - A domain name for the set that this particular type belongs to.
  *   `info` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - Application-specific information about this entity type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The type name, like "/saft/person". See README.entity-types for the inventory of SAFT type tags.
  *   `score` (*type:* `number()`, *default:* `nil`) - A score for this type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basedOnMention => integer() | nil,
          :domain => String.t() | nil,
          :info => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :name => String.t() | nil,
          :score => number() | nil
        }

  field(:basedOnMention)
  field(:domain)
  field(:info, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)
  field(:name)
  field(:score)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
