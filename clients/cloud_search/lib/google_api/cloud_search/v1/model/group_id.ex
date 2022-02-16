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

defmodule GoogleApi.CloudSearch.V1.Model.GroupId do
  @moduledoc """
  Id representing a group that could be a space, a chat, or a direct message space. Which ID is set here will determine which group

  ## Attributes

  *   `dmId` (*type:* `GoogleApi.CloudSearch.V1.Model.DmId.t`, *default:* `nil`) - Unique, immutable ID of the Direct Message Space
  *   `spaceId` (*type:* `GoogleApi.CloudSearch.V1.Model.SpaceId.t`, *default:* `nil`) - Unique, immutable ID of the Space
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dmId => GoogleApi.CloudSearch.V1.Model.DmId.t() | nil,
          :spaceId => GoogleApi.CloudSearch.V1.Model.SpaceId.t() | nil
        }

  field(:dmId, as: GoogleApi.CloudSearch.V1.Model.DmId)
  field(:spaceId, as: GoogleApi.CloudSearch.V1.Model.SpaceId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.GroupId do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.GroupId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.GroupId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end