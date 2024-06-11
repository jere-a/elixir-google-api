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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreSourceTrustProto do
  @moduledoc """
  Trust related information about the input source (feed or user) to help feature summarization. Typically, the values in this proto are either based on source's previous observations (e.g., a blocked LBC user or a trusted feed) or their status (Google hired operator or admin user). The proto can later contain a more granular trust score or correctness probabilities. A higher enum value indicates a more trusted source. Leaving room in the value space for adding more granular enums, if they become necessary later.

  ## Attributes

  *   `level` (*type:* `String.t`, *default:* `nil`) - The level of trust for the source of the observation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :level => String.t() | nil
        }

  field(:level)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreSourceTrustProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreSourceTrustProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreSourceTrustProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
