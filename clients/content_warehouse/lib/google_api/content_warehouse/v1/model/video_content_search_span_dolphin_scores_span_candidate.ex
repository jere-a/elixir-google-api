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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanCandidate do
  @moduledoc """


  ## Attributes

  *   `asrConfidenceStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchMetricStats.t`, *default:* `nil`) - A summary of the token asr_confidence scores that make up the candidate.
  *   `scoreStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchMetricStats.t`, *default:* `nil`) - A summary of the token scores that make up the candidate.
  *   `sourcePassage` (*type:* `String.t`, *default:* `nil`) - The passage text from which this span candidate belongs to. In case of description spans, this field stores the sentence containing the span candidate where the sentence is a subset of the passage used for generating the span candidate.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The span candidate text.
  *   `timeMs` (*type:* `String.t`, *default:* `nil`) - The start time for the span candidate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asrConfidenceStats =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchMetricStats.t() | nil,
          :scoreStats =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchMetricStats.t() | nil,
          :sourcePassage => String.t() | nil,
          :text => String.t() | nil,
          :timeMs => String.t() | nil
        }

  field(:asrConfidenceStats, as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchMetricStats)

  field(:scoreStats, as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchMetricStats)
  field(:sourcePassage)
  field(:text)
  field(:timeMs)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanCandidate do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanCandidate.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanCandidate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
