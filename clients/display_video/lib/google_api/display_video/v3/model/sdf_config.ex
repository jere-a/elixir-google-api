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

defmodule GoogleApi.DisplayVideo.V3.Model.SdfConfig do
  @moduledoc """
  Structured Data File (SDF) related settings.

  ## Attributes

  *   `adminEmail` (*type:* `String.t`, *default:* `nil`) - An administrator email address to which the SDF processing status reports will be sent.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Required. The version of SDF being used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminEmail => String.t() | nil,
          :version => String.t() | nil
        }

  field(:adminEmail)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.SdfConfig do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.SdfConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.SdfConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
