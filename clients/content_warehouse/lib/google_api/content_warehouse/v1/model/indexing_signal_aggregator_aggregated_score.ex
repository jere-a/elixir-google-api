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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore do
  @moduledoc """
  Aggregated signal used by NumericSignalAggregator. Next field id: 25

  ## Attributes

  *   `deviation` (*type:* `float()`, *default:* `nil`) - A number reflecting the deviation of Url scores.
  *   `m2` (*type:* `float()`, *default:* `nil`) - State variables for West & Chan variance algorithm used to be stored here directly. Now they are stored inside RunningMeanAndVarianceInternalState.
  *   `maxScoreUrl` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore.t`, *default:* `nil`) - Input UrlScore with max score.
  *   `mean` (*type:* `float()`, *default:* `nil`) - 
  *   `meanScore` (*type:* `float()`, *default:* `nil`) - Overall stats that are only available in final aggregation results. The aggregated score.
  *   `minScoreUrl` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore.t`, *default:* `nil`) - Input UrlScore with min score.
  *   `numImportantUrls` (*type:* `String.t`, *default:* `nil`) - 
  *   `numUrlsMatched` (*type:* `String.t`, *default:* `nil`) - Final Stats that are also available in intermediate output. Number of Urls matching the class.
  *   `numUrlsWithSignal` (*type:* `String.t`, *default:* `nil`) - Not every matching url has a signal.
  *   `patternLayer` (*type:* `String.t`, *default:* `nil`) - Experimental layer of the corresponding pattern.
  *   `patternsUsedInMediation` (*type:* `list(String.t)`, *default:* `nil`) - Optionally populated in mediators. A list of patterns that actually contributed to the final mediated signal.
  *   `percentile` (*type:* `list(float())`, *default:* `nil`) - Score percentile of matching urls. If present, it has N entries for buckets of roughly equal number of urls. N is specified the aggregation. The value is the min score in that bucket.
  *   `runningMeanAndVarianceInternalState` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorRunningMeanAndVarianceInternalState.t`, *default:* `nil`) - 
  *   `samples` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore.t)`, *default:* `nil`) - Random samples.
  *   `scores` (*type:* `list(float())`, *default:* `nil`) - for calculating percentile
  *   `signalId` (*type:* `integer()`, *default:* `nil`) - For debugging purposes, this is an id of the signal associated with this AggregatedScore. For pattern score, this may be the length of the pattern.
  *   `singleUrlScore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore.t`, *default:* `nil`) - If this field presents, it is for a single url. No other field should appear.
  *   `totalScore` (*type:* `float()`, *default:* `nil`) - summation varaible used to get mean
  *   `totalScoreLow` (*type:* `float()`, *default:* `nil`) - low-order part of total_score
  *   `totalScoreSqr` (*type:* `float()`, *default:* `nil`) - summation variable for calculating deviation note, these are now only used for legacy and debugging purposes
  *   `totalScoreSqrLow` (*type:* `float()`, *default:* `nil`) - low order part of total_score_sq
  *   `totalWeight` (*type:* `float()`, *default:* `nil`) - for calculating weighted mean/dev
  *   `totalWeightLow` (*type:* `float()`, *default:* `nil`) - low order part of total_weight
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviation => float() | nil,
          :m2 => float() | nil,
          :maxScoreUrl =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore.t() | nil,
          :mean => float() | nil,
          :meanScore => float() | nil,
          :minScoreUrl =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore.t() | nil,
          :numImportantUrls => String.t() | nil,
          :numUrlsMatched => String.t() | nil,
          :numUrlsWithSignal => String.t() | nil,
          :patternLayer => String.t() | nil,
          :patternsUsedInMediation => list(String.t()) | nil,
          :percentile => list(float()) | nil,
          :runningMeanAndVarianceInternalState =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorRunningMeanAndVarianceInternalState.t()
            | nil,
          :samples =>
            list(GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore.t()) | nil,
          :scores => list(float()) | nil,
          :signalId => integer() | nil,
          :singleUrlScore =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore.t() | nil,
          :totalScore => float() | nil,
          :totalScoreLow => float() | nil,
          :totalScoreSqr => float() | nil,
          :totalScoreSqrLow => float() | nil,
          :totalWeight => float() | nil,
          :totalWeightLow => float() | nil
        }

  field(:deviation)
  field(:m2)
  field(:maxScoreUrl, as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore)
  field(:mean)
  field(:meanScore)
  field(:minScoreUrl, as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore)
  field(:numImportantUrls)
  field(:numUrlsMatched)
  field(:numUrlsWithSignal)
  field(:patternLayer)
  field(:patternsUsedInMediation, type: :list)
  field(:percentile, type: :list)

  field(:runningMeanAndVarianceInternalState,
    as:
      GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorRunningMeanAndVarianceInternalState
  )

  field(:samples,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore,
    type: :list
  )

  field(:scores, type: :list)
  field(:signalId)
  field(:singleUrlScore, as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlScore)
  field(:totalScore)
  field(:totalScoreLow)
  field(:totalScoreSqr)
  field(:totalScoreSqrLow)
  field(:totalWeight)
  field(:totalWeightLow)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
