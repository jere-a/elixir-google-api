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

defmodule GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentLabelSet do
  @moduledoc """
  Message representing label set. * A label is a key value pair set for a VM. * A LabelSet is a set of labels. * Labels within a LabelSet are ANDed. In other words, a LabelSet is applicable for a VM only if it matches all the labels in the LabelSet. * Example: A LabelSet with 2 labels: `env=prod` and `type=webserver` will only be applicable for those VMs with both labels present.

  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map() | nil
        }

  field(:labels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentLabelSet do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentLabelSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentLabelSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end