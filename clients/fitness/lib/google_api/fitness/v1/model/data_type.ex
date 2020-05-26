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

defmodule GoogleApi.Fitness.V1.Model.DataType do
  @moduledoc """


  ## Attributes

  *   `field` (*type:* `list(GoogleApi.Fitness.V1.Model.DataTypeField.t)`, *default:* `nil`) - A field represents one dimension of a data type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Each data type has a unique, namespaced, name. All data types in the
      com.google namespace are shared as part of the platform.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => list(GoogleApi.Fitness.V1.Model.DataTypeField.t()),
          :name => String.t()
        }

  field(:field, as: GoogleApi.Fitness.V1.Model.DataTypeField, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.DataType do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.DataType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.DataType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
