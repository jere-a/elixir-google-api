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

defmodule GoogleApi.Content.V21.Model.TriggerActionPayload do
  @moduledoc """
  The payload for the triggered action.

  ## Attributes

  *   `actionContext` (*type:* `String.t`, *default:* `nil`) - Required. The context from the selected action. The value is obtained from rendered issues and needs to be sent back to identify the action that is being triggered.
  *   `actionInput` (*type:* `GoogleApi.Content.V21.Model.ActionInput.t`, *default:* `nil`) - Required. Input provided by the merchant.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionContext => String.t() | nil,
          :actionInput => GoogleApi.Content.V21.Model.ActionInput.t() | nil
        }

  field(:actionContext)
  field(:actionInput, as: GoogleApi.Content.V21.Model.ActionInput)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.TriggerActionPayload do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.TriggerActionPayload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.TriggerActionPayload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
