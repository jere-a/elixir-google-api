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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2betaModel do
  @moduledoc """
  Metadata that describes the training and serving parameters of a Model. A Model can be associated with a ServingConfig and then queried through the Predict API.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the Recommendation Model was created at.
  *   `dataState` (*type:* `String.t`, *default:* `nil`) - Output only. The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`. Recommendation model cannot be trained if the data is in `DATA_ERROR` state. Recommendation model can have `DATA_ERROR` state even if serving state is `ACTIVE`: models were trained successfully before, but cannot be refreshed because model no longer has sufficient data for training.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  *   `filteringOption` (*type:* `String.t`, *default:* `nil`) - Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  *   `lastTuneTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the latest successful tune finished.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  *   `optimizationObjective` (*type:* `String.t`, *default:* `nil`) - Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  *   `periodicTuningState` (*type:* `String.t`, *default:* `nil`) - Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  *   `servingConfigLists` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2betaModelServingConfigList.t)`, *default:* `nil`) - Output only. The list of valid serving configs associated with the PageOptimizationConfig.
  *   `servingState` (*type:* `String.t`, *default:* `nil`) - Output only. The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
  *   `trainingState` (*type:* `String.t`, *default:* `nil`) - Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  *   `tuningOperation` (*type:* `String.t`, *default:* `nil`) - Output only. The tune operation associated with the model. Can be used to determine if there is an ongoing tune for this recommendation. Empty field implies no tune is goig on.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the Recommendation Model was last updated. E.g. if a Recommendation Model was paused - this would be the time the pause was initiated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :dataState => String.t() | nil,
          :displayName => String.t() | nil,
          :filteringOption => String.t() | nil,
          :lastTuneTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :optimizationObjective => String.t() | nil,
          :periodicTuningState => String.t() | nil,
          :servingConfigLists =>
            list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2betaModelServingConfigList.t())
            | nil,
          :servingState => String.t() | nil,
          :trainingState => String.t() | nil,
          :tuningOperation => String.t() | nil,
          :type => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:dataState)
  field(:displayName)
  field(:filteringOption)
  field(:lastTuneTime, as: DateTime)
  field(:name)
  field(:optimizationObjective)
  field(:periodicTuningState)

  field(:servingConfigLists,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2betaModelServingConfigList,
    type: :list
  )

  field(:servingState)
  field(:trainingState)
  field(:tuningOperation)
  field(:type)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2betaModel do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2betaModel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2betaModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
