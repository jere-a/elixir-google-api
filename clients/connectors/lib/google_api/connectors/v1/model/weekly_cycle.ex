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

defmodule GoogleApi.Connectors.V1.Model.WeeklyCycle do
  @moduledoc """
  Time window specified for weekly operations.

  ## Attributes

  *   `schedule` (*type:* `list(GoogleApi.Connectors.V1.Model.Schedule.t)`, *default:* `nil`) - User can specify multiple windows in a week. Minimum of 1 window.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :schedule => list(GoogleApi.Connectors.V1.Model.Schedule.t()) | nil
        }

  field(:schedule, as: GoogleApi.Connectors.V1.Model.Schedule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.WeeklyCycle do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.WeeklyCycle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.WeeklyCycle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
