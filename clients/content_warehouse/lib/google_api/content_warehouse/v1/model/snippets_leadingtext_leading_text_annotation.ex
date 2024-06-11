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

defmodule GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotation do
  @moduledoc """
  Leading text which may consist of multiple pieces.

  ## Attributes

  *   `piece` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotationPiece.t)`, *default:* `nil`) - 
  *   `pieceType` (*type:* `String.t`, *default:* `nil`) - 
  *   `type` (*type:* `integer()`, *default:* `nil`) - Type of this leading text. Should be an enum of LeadingTextInfo.LeadingTextType
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :piece =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotationPiece.t()
            )
            | nil,
          :pieceType => String.t() | nil,
          :type => integer() | nil
        }

  field(:piece,
    as: GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotationPiece,
    type: :list
  )

  field(:pieceType)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
