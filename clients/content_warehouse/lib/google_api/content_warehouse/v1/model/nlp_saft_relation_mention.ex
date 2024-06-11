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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSaftRelationMention do
  @moduledoc """
  Mentions of relations in the document. A relation mention is between a mention of the source entity and a mention of the target entity.

  ## Attributes

  *   `info` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - Application-specific information about this relation mention.
  *   `phrase` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSaftPhrase.t`, *default:* `nil`) - Phrase in the document that indicates the relation mention.
  *   `source` (*type:* `integer()`, *default:* `nil`) - Source and target mention indices. These are indices into the mention arrays for their respective entities. The target is not used for attributes.
  *   `sourceInfo` (*type:* `list(String.t)`, *default:* `nil`) - The info of the source models or systems of the relation mention.
  *   `target` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :info => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :phrase => GoogleApi.ContentWarehouse.V1.Model.NlpSaftPhrase.t() | nil,
          :source => integer() | nil,
          :sourceInfo => list(String.t()) | nil,
          :target => integer() | nil
        }

  field(:info, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)
  field(:phrase, as: GoogleApi.ContentWarehouse.V1.Model.NlpSaftPhrase)
  field(:source)
  field(:sourceInfo, type: :list)
  field(:target)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftRelationMention do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSaftRelationMention.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftRelationMention do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
