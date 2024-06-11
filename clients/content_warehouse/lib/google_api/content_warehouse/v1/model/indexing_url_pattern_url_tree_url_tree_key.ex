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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeKey do
  @moduledoc """
  A UID of URL Tree. There is a hash function and a equality function for UrlTreeKey in //indexing/url_pattern/url_tree/util/url-tree-key-util.h. When adding or deprecating a field in this proto, please also update the hash function and the equality function. LINT.IfChange

  ## Attributes

  *   `crawlerId` (*type:* `String.t`, *default:* `nil`) - 
  *   `domain` (*type:* `String.t`, *default:* `nil`) - 
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :crawlerId => String.t() | nil,
          :domain => String.t() | nil,
          :hostname => String.t() | nil
        }

  field(:crawlerId)
  field(:domain)
  field(:hostname)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeKey do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeKey.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingUrlPatternUrlTreeUrlTreeKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
