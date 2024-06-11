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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersFacetParsing do
  @moduledoc """
  Construct for how to construe a facet when parse from neural or lexical models. Unlike regular intent annotations, facets are post-hoc grounded to indicated spoans, so they also need to provide their input and output slot independently.

  ## Attributes

  *   `facetName` (*type:* `String.t`, *default:* `nil`) - Optional, as this can take the name of the slot/schema its associated with or it might need to map onto something different.
  *   `inputSlotName` (*type:* `String.t`, *default:* `nil`) - Required, the slot into which we put any ungrounded string or mid
  *   `outputSlotName` (*type:* `String.t`, *default:* `nil`) - Optional, if absent output_type will be used for typing, or this is a MRF operator
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :facetName => String.t() | nil,
          :inputSlotName => String.t() | nil,
          :outputSlotName => String.t() | nil
        }

  field(:facetName)
  field(:inputSlotName)
  field(:outputSlotName)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersFacetParsing do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersFacetParsing.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersFacetParsing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
