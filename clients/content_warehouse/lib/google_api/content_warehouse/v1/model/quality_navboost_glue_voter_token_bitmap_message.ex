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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityNavboostGlueVoterTokenBitmapMessage do
  @moduledoc """
  Used for aggregating query unique voter_token during merging. We use 4 uint64(s) as a 256-bit bitmap to aggregate distinct voter_tokens in Glue model pipeline. Number of elements should always be either 0 or 4. As an optimization, we store the voter_token as a single uint64 if only one bit is set. See quality/navboost/speedy_glue/util/voter_token_bitmap.h for the class that manages operations on these bitmaps.

  ## Attributes

  *   `subRange` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `voterToken` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :subRange => list(String.t()) | nil,
          :voterToken => String.t() | nil
        }

  field(:subRange, type: :list)
  field(:voterToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostGlueVoterTokenBitmapMessage do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityNavboostGlueVoterTokenBitmapMessage.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostGlueVoterTokenBitmapMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
