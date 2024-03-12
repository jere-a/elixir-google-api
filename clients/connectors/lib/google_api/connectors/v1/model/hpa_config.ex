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

defmodule GoogleApi.Connectors.V1.Model.HPAConfig do
  @moduledoc """
  Autoscaling config for connector deployment system metrics.

  ## Attributes

  *   `cpuUtilizationThreshold` (*type:* `String.t`, *default:* `nil`) - Output only. Percent CPU utilization where HPA triggers autoscaling.
  *   `memoryUtilizationThreshold` (*type:* `String.t`, *default:* `nil`) - Output only. Percent Memory utilization where HPA triggers autoscaling.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpuUtilizationThreshold => String.t() | nil,
          :memoryUtilizationThreshold => String.t() | nil
        }

  field(:cpuUtilizationThreshold)
  field(:memoryUtilizationThreshold)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.HPAConfig do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.HPAConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.HPAConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
