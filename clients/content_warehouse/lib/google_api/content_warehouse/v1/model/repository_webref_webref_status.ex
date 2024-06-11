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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefStatus do
  @moduledoc """


  ## Attributes

  *   `dataEpoch` (*type:* `String.t`, *default:* `nil`) - The epoch of the Webref static data (the name-filter.data file). As of Dec 2020 in prod Goldmine (in webref_daily_full_model_static_data) this value is over from the alpha model static data, since this is where most of the parts come from. I.e. the value does not correspond to the actual model being used.
  *   `utilStatus` (*type:* `GoogleApi.ContentWarehouse.V1.Model.UtilStatusProto.t`, *default:* `nil`) - Error that occurred during the annotation. This field is only populated by QRef (i.e. under QueryJoin.status) and never by WebRef (i.e. under WebrefEntities.status) anymore, which instead reports errors (and soon also taints) through standard Goldmine mechanisms.
  *   `version` (*type:* `integer()`, *default:* `nil`) - The version number of the annotator (the cl the binary was built from). Must be enabled via a command line flag. See also the Goldmine's indexing::annotations::AnnotationMeta proto.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataEpoch => String.t() | nil,
          :utilStatus => GoogleApi.ContentWarehouse.V1.Model.UtilStatusProto.t() | nil,
          :version => integer() | nil
        }

  field(:dataEpoch)
  field(:utilStatus, as: GoogleApi.ContentWarehouse.V1.Model.UtilStatusProto)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefStatus do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
