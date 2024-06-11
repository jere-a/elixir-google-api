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

defmodule GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsCircleProto do
  @moduledoc """
  Represents a Google+ Circle. Currently (12/2011), a Circle is identical to the ContactGroup with matching parameters, but Circle must only be used for true Circles and not other Focus groups, and should be preferred over ContactGroup where applicable. Soon it may become more efficient to check membership in a Circle than in a ContactGroup (see http://go/superglue). Support for this principal type is currently (12/2011) incomplete -- e.g., Keystore does not support it yet (see b/5703421).

  ## Attributes

  *   `circleId` (*type:* `String.t`, *default:* `nil`) - Circle ID is unique only relative to the owner's Gaia ID. Currently required.
  *   `ownerGaiaId` (*type:* `String.t`, *default:* `nil`) - The owner of the circle. Currently required.
  *   `requiredConsistencyTimestampUsec` (*type:* `String.t`, *default:* `nil`) - If present, then tests for membership in this circle must use data known to be at least as fresh as the given (FBS-assigned) timestamp. See http://go/fbs-consistent-read-after-important-write Before using this, be sure that any service checking authorization against this circle supports checking consistency timestamps. For example, as of 12/2011, Keystore only supports this for the Moonshine configuration, and in others authorization checks will fail if the timestamp is present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :circleId => String.t() | nil,
          :ownerGaiaId => String.t() | nil,
          :requiredConsistencyTimestampUsec => String.t() | nil
        }

  field(:circleId)
  field(:ownerGaiaId)
  field(:requiredConsistencyTimestampUsec)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsCircleProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsCircleProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.SecurityCredentialsCircleProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
