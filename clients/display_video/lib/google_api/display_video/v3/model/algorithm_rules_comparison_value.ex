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

defmodule GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesComparisonValue do
  @moduledoc """
  A value to compare the signal to.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Boolean value.
  *   `creativeDimensionValue` (*type:* `GoogleApi.DisplayVideo.V3.Model.Dimensions.t`, *default:* `nil`) - Creative dimension value.
  *   `dayAndTimeValue` (*type:* `GoogleApi.DisplayVideo.V3.Model.DayAndTime.t`, *default:* `nil`) - Day and time value. Only `TIME_ZONE_RESOLUTION_END_USER` is supported.
  *   `deviceTypeValue` (*type:* `String.t`, *default:* `nil`) - Device type value.
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - Double value.
  *   `environmentValue` (*type:* `String.t`, *default:* `nil`) - Environment value.
  *   `exchangeValue` (*type:* `String.t`, *default:* `nil`) - Exchange value.
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - Integer value.
  *   `onScreenPositionValue` (*type:* `String.t`, *default:* `nil`) - Ad position value.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - String value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :creativeDimensionValue => GoogleApi.DisplayVideo.V3.Model.Dimensions.t() | nil,
          :dayAndTimeValue => GoogleApi.DisplayVideo.V3.Model.DayAndTime.t() | nil,
          :deviceTypeValue => String.t() | nil,
          :doubleValue => float() | nil,
          :environmentValue => String.t() | nil,
          :exchangeValue => String.t() | nil,
          :int64Value => String.t() | nil,
          :onScreenPositionValue => String.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:boolValue)
  field(:creativeDimensionValue, as: GoogleApi.DisplayVideo.V3.Model.Dimensions)
  field(:dayAndTimeValue, as: GoogleApi.DisplayVideo.V3.Model.DayAndTime)
  field(:deviceTypeValue)
  field(:doubleValue)
  field(:environmentValue)
  field(:exchangeValue)
  field(:int64Value)
  field(:onScreenPositionValue)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesComparisonValue do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesComparisonValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesComparisonValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
