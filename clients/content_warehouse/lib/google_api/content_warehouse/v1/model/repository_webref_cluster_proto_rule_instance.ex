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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRuleInstance do
  @moduledoc """
  When we apply a rule to define a particular cluster, we have a RuleInstance. Some kinds of rules for clusters define more than one cluster. In those rules we say things like "for each entity X with this property, we create a cluster where..."; each particular cluster that we create is the result of an *instance* of that rule, where the argument X has been bound to a particular entity (note that this also applies to rules that define only one cluster; in that case, there are no arguments). An entity that is part of a cluster plays a "role" in such a cluster. This message describes such an instantiation of a rule with a role and with concrete values for the arguments.

  ## Attributes

  *   `midList` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoMidListRuleInstance.t`, *default:* `nil`) - Exactly one of these *RuleInstance fields needs to be present for clusters which have not been merged; it selects the specific kind of rule instance. For merged clusters both fields may be present.
  *   `relation` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRuleInstance.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :midList =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoMidListRuleInstance.t()
            | nil,
          :relation =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRuleInstance.t()
            )
            | nil
        }

  field(:midList,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoMidListRuleInstance
  )

  field(:relation,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRuleInstance,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRuleInstance do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRuleInstance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRuleInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
