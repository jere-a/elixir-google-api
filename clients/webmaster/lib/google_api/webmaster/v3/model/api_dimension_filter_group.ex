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

defmodule GoogleApi.Webmaster.V3.Model.ApiDimensionFilterGroup do
  @moduledoc """


  ## Attributes

  *   `filters` (*type:* `list(GoogleApi.Webmaster.V3.Model.ApiDimensionFilter.t)`, *default:* `nil`) - 
  *   `groupType` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filters => list(GoogleApi.Webmaster.V3.Model.ApiDimensionFilter.t()) | nil,
          :groupType => String.t() | nil
        }

  field(:filters, as: GoogleApi.Webmaster.V3.Model.ApiDimensionFilter, type: :list)
  field(:groupType)
end

defimpl Poison.Decoder, for: GoogleApi.Webmaster.V3.Model.ApiDimensionFilterGroup do
  def decode(value, options) do
    GoogleApi.Webmaster.V3.Model.ApiDimensionFilterGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Webmaster.V3.Model.ApiDimensionFilterGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
