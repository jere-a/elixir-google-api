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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDowntimePeriod do
  @moduledoc """
  Specifies a period of up to 24 hours when downtime should be enabled, starting at certain time on a certain day of the week, and ending at a later time on either that day or the following day.

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - True if downtime should be enabled during this period.
  *   `endTime` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleTypeTimeOfDay.t`, *default:* `nil`) - Time of day that this downtime period should end. Required. If end_time > start_time, end_time is relative to start_day. Otherwise, end_time is relative to the day after start_day. For example, start_day: MONDAY, start_time: 9 p.m., end_time: 6 a.m. means that the downtime period starts at 9 p.m. on Monday and ends at 6 a.m. on Tuesday.
  *   `startDay` (*type:* `String.t`, *default:* `nil`) - The day of the week when this downtime period starts. Required.
  *   `startTime` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleTypeTimeOfDay.t`, *default:* `nil`) - Time of day that this downtime period should start. Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean() | nil,
          :endTime => GoogleApi.ContentWarehouse.V1.Model.GoogleTypeTimeOfDay.t() | nil,
          :startDay => String.t() | nil,
          :startTime => GoogleApi.ContentWarehouse.V1.Model.GoogleTypeTimeOfDay.t() | nil
        }

  field(:enabled)
  field(:endTime, as: GoogleApi.ContentWarehouse.V1.Model.GoogleTypeTimeOfDay)
  field(:startDay)
  field(:startTime, as: GoogleApi.ContentWarehouse.V1.Model.GoogleTypeTimeOfDay)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDowntimePeriod do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDowntimePeriod.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDowntimePeriod do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
