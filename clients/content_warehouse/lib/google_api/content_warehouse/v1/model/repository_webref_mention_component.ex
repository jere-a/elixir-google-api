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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMentionComponent do
  @moduledoc """
  Reference to a component of a compound mention. Next available tag: 5

  ## Attributes

  *   `entityIndex` (*type:* `integer()`, *default:* `nil`) - The indices to identify the entity within the WebrefEntities.entities, the segment within its EntityAnnotations.segment_mentions, and the mention within that segment. entity_index is always guaranteed to be set, but segment_mentions_index and mention_index are omitted if the component reference is implicit.
  *   `isHeadComponent` (*type:* `boolean()`, *default:* `nil`) - The source of the compound has designated this component as the head. Only one of the components can be a head, but it's possible none are.
  *   `mentionIndex` (*type:* `integer()`, *default:* `nil`) - 
  *   `segmentMentionsIndex` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityIndex => integer() | nil,
          :isHeadComponent => boolean() | nil,
          :mentionIndex => integer() | nil,
          :segmentMentionsIndex => integer() | nil
        }

  field(:entityIndex)
  field(:isHeadComponent)
  field(:mentionIndex)
  field(:segmentMentionsIndex)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMentionComponent do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMentionComponent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMentionComponent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
