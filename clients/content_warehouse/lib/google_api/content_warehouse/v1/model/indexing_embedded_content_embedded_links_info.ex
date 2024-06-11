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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedLinksInfo do
  @moduledoc """


  ## Attributes

  *   `embedderInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbedderInfo.t`, *default:* `nil`) - This field is optional only because we're adding it late and want to support records written before that. For newly produced records, this field should always be set.
  *   `link` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentLinkInfo.t)`, *default:* `nil`) - 
  *   `pageSizeInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentPageSizeInfo.t`, *default:* `nil`) - Page download size.
  *   `sumHttpResponseLength` (*type:* `integer()`, *default:* `nil`) - This field is the sum of http_response_length for the embedder and all embedded resources. This is expected to be set only in the docjoins, not in the pinax tables or the exported bigtable.
  *   `uncrawledLinkUrl` (*type:* `list(String.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :embedderInfo =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbedderInfo.t() | nil,
          :link =>
            list(GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentLinkInfo.t()) | nil,
          :pageSizeInfo =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentPageSizeInfo.t() | nil,
          :sumHttpResponseLength => integer() | nil,
          :uncrawledLinkUrl => list(String.t()) | nil
        }

  field(:embedderInfo, as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbedderInfo)

  field(:link,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentLinkInfo,
    type: :list
  )

  field(:pageSizeInfo, as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentPageSizeInfo)

  field(:sumHttpResponseLength)
  field(:uncrawledLinkUrl, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedLinksInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedLinksInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentEmbeddedLinksInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
