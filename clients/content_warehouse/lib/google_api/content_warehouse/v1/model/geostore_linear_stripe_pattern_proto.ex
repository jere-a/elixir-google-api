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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreLinearStripePatternProto do
  @moduledoc """


  ## Attributes

  *   `line` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostorePhysicalLineProto.t)`, *default:* `nil`) - A linear marker may consist of one or more parallel physical lines. These are ordered left to right along the direction of the marker core polyline.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :line => list(GoogleApi.ContentWarehouse.V1.Model.GeostorePhysicalLineProto.t()) | nil
        }

  field(:line, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePhysicalLineProto, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreLinearStripePatternProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreLinearStripePatternProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreLinearStripePatternProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
