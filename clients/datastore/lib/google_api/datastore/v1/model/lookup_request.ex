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

defmodule GoogleApi.Datastore.V1.Model.LookupRequest do
  @moduledoc """
  The request for Datastore.Lookup.

  ## Attributes

  *   `databaseId` (*type:* `String.t`, *default:* `nil`) - The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.
  *   `keys` (*type:* `list(GoogleApi.Datastore.V1.Model.Key.t)`, *default:* `nil`) - Required. Keys of entities to look up.
  *   `readOptions` (*type:* `GoogleApi.Datastore.V1.Model.ReadOptions.t`, *default:* `nil`) - The options for this lookup request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :databaseId => String.t() | nil,
          :keys => list(GoogleApi.Datastore.V1.Model.Key.t()) | nil,
          :readOptions => GoogleApi.Datastore.V1.Model.ReadOptions.t() | nil
        }

  field(:databaseId)
  field(:keys, as: GoogleApi.Datastore.V1.Model.Key, type: :list)
  field(:readOptions, as: GoogleApi.Datastore.V1.Model.ReadOptions)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.LookupRequest do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.LookupRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.LookupRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
