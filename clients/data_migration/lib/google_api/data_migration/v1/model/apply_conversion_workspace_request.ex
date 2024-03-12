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

defmodule GoogleApi.DataMigration.V1.Model.ApplyConversionWorkspaceRequest do
  @moduledoc """
  Request message for 'ApplyConversionWorkspace' request.

  ## Attributes

  *   `autoCommit` (*type:* `boolean()`, *default:* `nil`) - Optional. Specifies whether the conversion workspace is to be committed automatically after the apply.
  *   `connectionProfile` (*type:* `String.t`, *default:* `nil`) - Optional. Fully qualified (Uri) name of the destination connection profile.
  *   `dryRun` (*type:* `boolean()`, *default:* `nil`) - Optional. Only validates the apply process, but doesn't change the destination database. Only works for PostgreSQL destination connection profile.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Filter which entities to apply. Leaving this field empty will apply all of the entities. Supports Google AIP 160 based filtering.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoCommit => boolean() | nil,
          :connectionProfile => String.t() | nil,
          :dryRun => boolean() | nil,
          :filter => String.t() | nil
        }

  field(:autoCommit)
  field(:connectionProfile)
  field(:dryRun)
  field(:filter)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.ApplyConversionWorkspaceRequest do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.ApplyConversionWorkspaceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.ApplyConversionWorkspaceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
