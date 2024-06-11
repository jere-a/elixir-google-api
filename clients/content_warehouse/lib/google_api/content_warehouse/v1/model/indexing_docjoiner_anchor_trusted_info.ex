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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorTrustedInfo do
  @moduledoc """
  This message summarized anchors of one trusted site.

  ## Attributes

  *   `matchedScore` (*type:* `number()`, *default:* `nil`) - Difference in KL-divergence from spam and non-spam anchors. Value >0 indicate that anchor text from this trusted source is similar to anchors classified as spam which means that spammy anchors are legitimate.
  *   `matchedScoreInfo` (*type:* `list(String.t)`, *default:* `nil`) - Detailed debug information about computation of trusted anchors match. Populated only when --anchorspam_penalizer_debug=true
  *   `phrasesScore` (*type:* `number()`, *default:* `nil`) - Count of anchors classified as spam using anchor text.
  *   `site` (*type:* `String.t`, *default:* `nil`) - Site name from anchor.source().site().
  *   `text` (*type:* `list(String.t)`, *default:* `nil`) - Tokenized text of all anchors from the site.
  *   `trustedScore` (*type:* `number()`, *default:* `nil`) - Fraction of pages with newsy anchors on the site, >0 for trusted sites.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :matchedScore => number() | nil,
          :matchedScoreInfo => list(String.t()) | nil,
          :phrasesScore => number() | nil,
          :site => String.t() | nil,
          :text => list(String.t()) | nil,
          :trustedScore => number() | nil
        }

  field(:matchedScore)
  field(:matchedScoreInfo, type: :list)
  field(:phrasesScore)
  field(:site)
  field(:text, type: :list)
  field(:trustedScore)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorTrustedInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorTrustedInfo.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorTrustedInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
