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

defmodule GoogleApi.VMMigration.V1.Model.CloneJob do
  @moduledoc """
  CloneJob describes the process of creating a clone of a MigratingVM to the requested target based on the latest successful uploaded snapshots. While the migration cycles of a MigratingVm take place, it is possible to verify the uploaded VM can be started in the cloud, by creating a clone. The clone can be created without any downtime, and it is created using the latest snapshots which are already in the cloud. The cloneJob is only responsible for its work, not its products, which means once it is finished, it will never touch the instance it created. It will only delete it in case of the CloneJob being cancelled or upon failure to clone.

  ## Attributes

  *   `computeEngineTargetDetails` (*type:* `GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDetails.t`, *default:* `nil`) - Output only. Details of the target VM in Compute Engine.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the clone job was created (as an API call, not when it was actually created in the target).
  *   `error` (*type:* `GoogleApi.VMMigration.V1.Model.Status.t`, *default:* `nil`) - Output only. Provides details for the errors that led to the Clone Job's state.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the clone.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the clone job.
  *   `stateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the state was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :computeEngineTargetDetails =>
            GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDetails.t() | nil,
          :createTime => DateTime.t() | nil,
          :error => GoogleApi.VMMigration.V1.Model.Status.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :stateTime => DateTime.t() | nil
        }

  field(:computeEngineTargetDetails, as: GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDetails)

  field(:createTime, as: DateTime)
  field(:error, as: GoogleApi.VMMigration.V1.Model.Status)
  field(:name)
  field(:state)
  field(:stateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.CloneJob do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.CloneJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.CloneJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
