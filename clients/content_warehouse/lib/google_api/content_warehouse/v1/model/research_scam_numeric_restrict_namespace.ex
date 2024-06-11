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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScamNumericRestrictNamespace do
  @moduledoc """


  ## Attributes

  *   `namespace` (*type:* `String.t`, *default:* `nil`) - The name of this namespace.
  *   `op` (*type:* `String.t`, *default:* `nil`) - This MUST be specified for queries and must NOT be specified for database points.
  *   `valueDouble` (*type:* `float()`, *default:* `nil`) - 
  *   `valueFloat` (*type:* `number()`, *default:* `nil`) - 
  *   `valueInt` (*type:* `String.t`, *default:* `nil`) - NOTE: Integers are represented in 64 bits here, but if all integer values for a given namespace fit in a narrower integer type (e.g. int8), we use the narrower integer type internally, increasing performance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :namespace => String.t() | nil,
          :op => String.t() | nil,
          :valueDouble => float() | nil,
          :valueFloat => number() | nil,
          :valueInt => String.t() | nil
        }

  field(:namespace)
  field(:op)
  field(:valueDouble)
  field(:valueFloat)
  field(:valueInt)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamNumericRestrictNamespace do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScamNumericRestrictNamespace.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamNumericRestrictNamespace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
