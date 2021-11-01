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

defmodule GoogleApi.Content.V21.Model.FreeListingsProgramStatus do
  @moduledoc """
  Response message for GetFreeListingsProgramStatus.

  ## Attributes

  *   `regionStatuses` (*type:* `list(GoogleApi.Content.V21.Model.FreeListingsProgramStatusRegionStatus.t)`, *default:* `nil`) - Status of the program in each region. Regions with the same status and review eligibility are grouped together in `regionCodes`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - If program is successfully onboarded for at least one region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :regionStatuses =>
            list(GoogleApi.Content.V21.Model.FreeListingsProgramStatusRegionStatus.t()) | nil,
          :state => String.t() | nil
        }

  field(:regionStatuses,
    as: GoogleApi.Content.V21.Model.FreeListingsProgramStatusRegionStatus,
    type: :list
  )

  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.FreeListingsProgramStatus do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.FreeListingsProgramStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.FreeListingsProgramStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end