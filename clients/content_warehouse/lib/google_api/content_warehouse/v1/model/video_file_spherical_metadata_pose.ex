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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataPose do
  @moduledoc """
  Specifies the compass heading, pitch & roll for the origin of the projection. The origin for the "equirectangular" projection is the center of the image. The origin for the other projection types is defined as the location in the image that corresponds to the origin of an "equirectangular" projection.

  ## Attributes

  *   `headingDegrees` (*type:* `number()`, *default:* `nil`) - 
  *   `pitchDegrees` (*type:* `number()`, *default:* `nil`) - 
  *   `rollDegrees` (*type:* `number()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :headingDegrees => number() | nil,
          :pitchDegrees => number() | nil,
          :rollDegrees => number() | nil
        }

  field(:headingDegrees)
  field(:pitchDegrees)
  field(:rollDegrees)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataPose do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataPose.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataPose do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
