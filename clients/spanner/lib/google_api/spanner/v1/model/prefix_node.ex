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

defmodule GoogleApi.Spanner.V1.Model.PrefixNode do
  @moduledoc """
  A message representing a key prefix node in the key prefix hierarchy. for eg. Bigtable keyspaces are lexicographically ordered mappings of keys to values. Keys often have a shared prefix structure where users use the keys to organize data. Eg ///employee In this case Keysight will possibly use one node for a company and reuse it for all employees that fall under the company. Doing so improves legibility in the UI.

  ## Attributes

  *   `dataSourceNode` (*type:* `boolean()`, *default:* `nil`) - Whether this corresponds to a data_source name.
  *   `depth` (*type:* `integer()`, *default:* `nil`) - The depth in the prefix hierarchy.
  *   `endIndex` (*type:* `integer()`, *default:* `nil`) - The index of the end key bucket of the range that this node spans.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - The index of the start key bucket of the range that this node spans.
  *   `word` (*type:* `String.t`, *default:* `nil`) - The string represented by the prefix node.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSourceNode => boolean() | nil,
          :depth => integer() | nil,
          :endIndex => integer() | nil,
          :startIndex => integer() | nil,
          :word => String.t() | nil
        }

  field(:dataSourceNode)
  field(:depth)
  field(:endIndex)
  field(:startIndex)
  field(:word)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.PrefixNode do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.PrefixNode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.PrefixNode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end