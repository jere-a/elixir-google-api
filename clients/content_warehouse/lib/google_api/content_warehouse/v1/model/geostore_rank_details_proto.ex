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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreRankDetailsProto do
  @moduledoc """
  This message is embedded within a FeatureProto. It has rank calculation details such as available rank signals and rank signal mixer used to compute final rank. For more details, see the Oyster Rank wiki page: http://wiki.corp.google.com/twiki/bin/view/Main/OysterRank

  ## Attributes

  *   `signal` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreRankSignalProto.t)`, *default:* `nil`) - A list of signals. Each one is extracted separately by a SignalExtractor.
  *   `signalMixerType` (*type:* `String.t`, *default:* `nil`) - The signal mixer that was used to calculate the rank.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :signal => list(GoogleApi.ContentWarehouse.V1.Model.GeostoreRankSignalProto.t()) | nil,
          :signalMixerType => String.t() | nil
        }

  field(:signal, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreRankSignalProto, type: :list)
  field(:signalMixerType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRankDetailsProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreRankDetailsProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRankDetailsProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
