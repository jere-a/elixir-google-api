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

defmodule GoogleApi.ContentWarehouse.V1.Model.HomeGraphCommonTraitRoutingHints do
  @moduledoc """
  LINT.IfChange go/shed-per-trait-routing. Making it object to allow for extendible design, where we can add attributes in future.

  ## Attributes

  *   `cloudFulfillmentOnly` (*type:* `boolean()`, *default:* `nil`) - Set to true for a non-local trait.
  *   `trait` (*type:* `String.t`, *default:* `nil`) - Trait name, e.g., "action.devices.traits.MediaInitiation". See [device traits](https://developers.home.google.com/cloud-to-cloud/traits). See java/com/google/home/graph/common/devices/config/protoconf.pi for the exhaustive list of trait-strings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudFulfillmentOnly => boolean() | nil,
          :trait => String.t() | nil
        }

  field(:cloudFulfillmentOnly)
  field(:trait)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.HomeGraphCommonTraitRoutingHints do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.HomeGraphCommonTraitRoutingHints.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.HomeGraphCommonTraitRoutingHints do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
