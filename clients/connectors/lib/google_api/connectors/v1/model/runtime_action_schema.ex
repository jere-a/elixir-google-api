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

defmodule GoogleApi.Connectors.V1.Model.RuntimeActionSchema do
  @moduledoc """
  Schema of a runtime action.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the action.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. Brief Description of action
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. Display Name of action to be shown on client side
  *   `inputJsonSchema` (*type:* `GoogleApi.Connectors.V1.Model.JsonSchema.t`, *default:* `nil`) - Output only. JsonSchema representation of this action's input metadata
  *   `inputParameters` (*type:* `list(GoogleApi.Connectors.V1.Model.InputParameter.t)`, *default:* `nil`) - Output only. List of input parameter metadata for the action.
  *   `resultJsonSchema` (*type:* `GoogleApi.Connectors.V1.Model.JsonSchema.t`, *default:* `nil`) - Output only. JsonSchema representation of this action's result metadata
  *   `resultMetadata` (*type:* `list(GoogleApi.Connectors.V1.Model.ResultMetadata.t)`, *default:* `nil`) - Output only. List of result field metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :inputJsonSchema => GoogleApi.Connectors.V1.Model.JsonSchema.t() | nil,
          :inputParameters => list(GoogleApi.Connectors.V1.Model.InputParameter.t()) | nil,
          :resultJsonSchema => GoogleApi.Connectors.V1.Model.JsonSchema.t() | nil,
          :resultMetadata => list(GoogleApi.Connectors.V1.Model.ResultMetadata.t()) | nil
        }

  field(:action)
  field(:description)
  field(:displayName)
  field(:inputJsonSchema, as: GoogleApi.Connectors.V1.Model.JsonSchema)
  field(:inputParameters, as: GoogleApi.Connectors.V1.Model.InputParameter, type: :list)
  field(:resultJsonSchema, as: GoogleApi.Connectors.V1.Model.JsonSchema)
  field(:resultMetadata, as: GoogleApi.Connectors.V1.Model.ResultMetadata, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.RuntimeActionSchema do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.RuntimeActionSchema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.RuntimeActionSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
