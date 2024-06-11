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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryS3LangIdDebuggingInfo do
  @moduledoc """
  For debugging only.

  ## Attributes

  *   `audioInputCap` (*type:* `String.t`, *default:* `nil`) - Audio input processing cap.
  *   `failedSegments` (*type:* `integer()`, *default:* `nil`) - Number of failed segments. Successful segments are stored in `langid_signals_for_segment`.
  *   `processedSegments` (*type:* `integer()`, *default:* `nil`) - Number of processed segments.
  *   `segmentDuration` (*type:* `String.t`, *default:* `nil`) - Duration of each segment (except for the last one if capped).
  *   `segmentStride` (*type:* `integer()`, *default:* `nil`) - If >1, every N segment is processed.
  *   `waveHeader` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SpeechWaveHeader.t`, *default:* `nil`) - Wave header of the audio input.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioInputCap => String.t() | nil,
          :failedSegments => integer() | nil,
          :processedSegments => integer() | nil,
          :segmentDuration => String.t() | nil,
          :segmentStride => integer() | nil,
          :waveHeader => GoogleApi.ContentWarehouse.V1.Model.SpeechWaveHeader.t() | nil
        }

  field(:audioInputCap)
  field(:failedSegments)
  field(:processedSegments)
  field(:segmentDuration)
  field(:segmentStride)
  field(:waveHeader, as: GoogleApi.ContentWarehouse.V1.Model.SpeechWaveHeader)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryS3LangIdDebuggingInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryS3LangIdDebuggingInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryS3LangIdDebuggingInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
