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

defmodule GoogleApi.StorageTransfer.V1.Model.ReplicationSpec do
  @moduledoc """
  Specifies the configuration for running a replication job.

  ## Attributes

  *   `gcsDataSink` (*type:* `GoogleApi.StorageTransfer.V1.Model.GcsData.t`, *default:* `nil`) - Specifies cloud Storage data sink.
  *   `gcsDataSource` (*type:* `GoogleApi.StorageTransfer.V1.Model.GcsData.t`, *default:* `nil`) - Specifies cloud Storage data source.
  *   `objectConditions` (*type:* `GoogleApi.StorageTransfer.V1.Model.ObjectConditions.t`, *default:* `nil`) - Specifies the object conditions to only include objects that satisfy these conditions in the set of data source objects. Object conditions based on objects' "last modification time" do not exclude objects in a data sink.
  *   `transferOptions` (*type:* `GoogleApi.StorageTransfer.V1.Model.TransferOptions.t`, *default:* `nil`) - Specifies the actions to be performed on the object during replication. Delete options are not supported for replication and when specified, the request fails with an INVALID_ARGUMENT error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsDataSink => GoogleApi.StorageTransfer.V1.Model.GcsData.t() | nil,
          :gcsDataSource => GoogleApi.StorageTransfer.V1.Model.GcsData.t() | nil,
          :objectConditions => GoogleApi.StorageTransfer.V1.Model.ObjectConditions.t() | nil,
          :transferOptions => GoogleApi.StorageTransfer.V1.Model.TransferOptions.t() | nil
        }

  field(:gcsDataSink, as: GoogleApi.StorageTransfer.V1.Model.GcsData)
  field(:gcsDataSource, as: GoogleApi.StorageTransfer.V1.Model.GcsData)
  field(:objectConditions, as: GoogleApi.StorageTransfer.V1.Model.ObjectConditions)
  field(:transferOptions, as: GoogleApi.StorageTransfer.V1.Model.TransferOptions)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.ReplicationSpec do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.ReplicationSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.ReplicationSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
