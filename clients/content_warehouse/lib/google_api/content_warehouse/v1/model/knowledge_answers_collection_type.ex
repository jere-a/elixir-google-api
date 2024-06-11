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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCollectionType do
  @moduledoc """
  A CollectionType configures a value whose type is intended to be a collection.

  ## Attributes

  *   `collection` (*type:* `list(String.t)`, *default:* `nil`) - The collection this value is filled with must be one of these collections (denoted by a /collection/* id). If no collections are specified, this value can be filled with any collection.
  *   `componentSpecificContracts` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts.t`, *default:* `nil`) - Contains data about the contracts that this ValueType level is available for. For more information see go/contract-based-conformance.
  *   `remodelings` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings.t`, *default:* `nil`) - Contains data about current schema remodelings at this ValueType level. For more information see go/meaning-remodeling-framework.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collection => list(String.t()) | nil,
          :componentSpecificContracts =>
            GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts.t() | nil,
          :remodelings =>
            GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings.t() | nil
        }

  field(:collection, type: :list)

  field(:componentSpecificContracts,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts
  )

  field(:remodelings, as: GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCollectionType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCollectionType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCollectionType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
