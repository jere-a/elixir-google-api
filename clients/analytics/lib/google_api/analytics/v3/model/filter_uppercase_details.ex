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

defmodule GoogleApi.Analytics.V3.Model.FilterUppercaseDetails do
  @moduledoc """
  Details for the filter of the type UPPER.

  ## Attributes

  *   `field` (*type:* `String.t`, *default:* `nil`) - Field to use in the filter.
  *   `fieldIndex` (*type:* `integer()`, *default:* `nil`) - The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => String.t() | nil,
          :fieldIndex => integer() | nil
        }

  field(:field)
  field(:fieldIndex)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.FilterUppercaseDetails do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.FilterUppercaseDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.FilterUppercaseDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
