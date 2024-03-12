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

defmodule GoogleApi.DataMigration.V1.Model.ViewEntity do
  @moduledoc """
  View's parent is a schema.

  ## Attributes

  *   `constraints` (*type:* `list(GoogleApi.DataMigration.V1.Model.ConstraintEntity.t)`, *default:* `nil`) - View constraints.
  *   `customFeatures` (*type:* `map()`, *default:* `nil`) - Custom engine specific features.
  *   `sqlCode` (*type:* `String.t`, *default:* `nil`) - The SQL code which creates the view.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :constraints => list(GoogleApi.DataMigration.V1.Model.ConstraintEntity.t()) | nil,
          :customFeatures => map() | nil,
          :sqlCode => String.t() | nil
        }

  field(:constraints, as: GoogleApi.DataMigration.V1.Model.ConstraintEntity, type: :list)
  field(:customFeatures, type: :map)
  field(:sqlCode)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.ViewEntity do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.ViewEntity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.ViewEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
