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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostorePointWithHeightProto do
  @moduledoc """
  PointWithHeightProto encodes lat/lng through PointProto and contains altitude information.

  ## Attributes

  *   `altitudeMeters` (*type:* `number()`, *default:* `nil`) - Altitude of this point is assumed to be relative to the ground level.
  *   `point` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :altitudeMeters => number() | nil,
          :point => GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto.t() | nil
        }

  field(:altitudeMeters)
  field(:point, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePointProto)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostorePointWithHeightProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostorePointWithHeightProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostorePointWithHeightProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
