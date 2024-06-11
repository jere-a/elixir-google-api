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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLink do
  @moduledoc """
  If the label is for something that links to another piece of content (in this volume, outside, a url, a citation, etc.).

  ## Attributes

  *   `UrlTarget` (*type:* `String.t`, *default:* `nil`) - For URL labels, we note the url here directly (it's also available by grabbing all text symbols within the labeled span). SCHOLARLY_CITATION labels or even CAPTION labels may occasionally contain URLs.
  *   `citationtarget` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLinkCitationTarget.t`, *default:* `nil`) - 
  *   `involumetarget` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLinkInVolumeTarget.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :UrlTarget => String.t() | nil,
          :citationtarget =>
            GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLinkCitationTarget.t()
            | nil,
          :involumetarget =>
            GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLinkInVolumeTarget.t()
            | nil
        }

  field(:UrlTarget)

  field(:citationtarget,
    as: GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLinkCitationTarget
  )

  field(:involumetarget,
    as: GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLinkInVolumeTarget
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLink do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabelContentLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
