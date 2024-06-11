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

defmodule GoogleApi.ContentWarehouse.V1.Model.AbuseiamContentRestriction do
  @moduledoc """
  Pair of Verdicts used for ProjectR age/geo gating. See http://go/projectr for more information.

  ## Attributes

  *   `adminVerdict` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamVerdict.t)`, *default:* `nil`) - Takedowns specified by admins via AbuseIAm
  *   `userVerdict` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamVerdict.t)`, *default:* `nil`) - User-specified takedowns
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminVerdict => list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamVerdict.t()) | nil,
          :userVerdict => list(GoogleApi.ContentWarehouse.V1.Model.AbuseiamVerdict.t()) | nil
        }

  field(:adminVerdict, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamVerdict, type: :list)
  field(:userVerdict, as: GoogleApi.ContentWarehouse.V1.Model.AbuseiamVerdict, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AbuseiamContentRestriction do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AbuseiamContentRestriction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AbuseiamContentRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
