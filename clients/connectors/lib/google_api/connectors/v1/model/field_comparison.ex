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

defmodule GoogleApi.Connectors.V1.Model.FieldComparison do
  @moduledoc """
  Field that needs to be compared.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Boolean value
  *   `comparator` (*type:* `String.t`, *default:* `nil`) - Comparator to use for comparing the field value.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Integer value
  *   `key` (*type:* `String.t`, *default:* `nil`) - Key of the field.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - String value
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :comparator => String.t() | nil,
          :intValue => String.t() | nil,
          :key => String.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:boolValue)
  field(:comparator)
  field(:intValue)
  field(:key)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.FieldComparison do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.FieldComparison.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.FieldComparison do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
