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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltImageIntentScores do
  @moduledoc """
  These scores are for image scores *in the context of a landing page*, which is now a discouraged path of building image classifications. See go/orbit-for-images-v2 for an alternative.

  ## Attributes

  *   `intents` (*type:* `list(String.t)`, *default:* `nil`) - The unique identifier for an Asteroid Belt document intent is being reused here
  *   `scores` (*type:* `list(integer())`, *default:* `nil`) - The intent scores, scaled to integers between 0 and 100 for compactness.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :intents => list(String.t()) | nil,
          :scores => list(integer()) | nil
        }

  field(:intents, type: :list)
  field(:scores, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltImageIntentScores do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltImageIntentScores.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityOrbitAsteroidBeltImageIntentScores do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
