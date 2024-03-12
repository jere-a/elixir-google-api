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

defmodule GoogleApi.Connectors.V1.Model.LogicalExpression do
  @moduledoc """
  Struct for representing boolean expressions.

  ## Attributes

  *   `fieldComparisons` (*type:* `list(GoogleApi.Connectors.V1.Model.FieldComparison.t)`, *default:* `nil`) - A list of fields to be compared.
  *   `logicalExpressions` (*type:* `list(GoogleApi.Connectors.V1.Model.LogicalExpression.t)`, *default:* `nil`) - A list of nested conditions to be compared.
  *   `logicalOperator` (*type:* `String.t`, *default:* `nil`) - The logical operator to use between the fields and conditions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fieldComparisons => list(GoogleApi.Connectors.V1.Model.FieldComparison.t()) | nil,
          :logicalExpressions => list(GoogleApi.Connectors.V1.Model.LogicalExpression.t()) | nil,
          :logicalOperator => String.t() | nil
        }

  field(:fieldComparisons, as: GoogleApi.Connectors.V1.Model.FieldComparison, type: :list)
  field(:logicalExpressions, as: GoogleApi.Connectors.V1.Model.LogicalExpression, type: :list)
  field(:logicalOperator)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.LogicalExpression do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.LogicalExpression.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.LogicalExpression do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
