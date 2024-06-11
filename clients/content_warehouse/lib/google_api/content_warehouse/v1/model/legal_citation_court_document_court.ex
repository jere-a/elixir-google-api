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

defmodule GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentCourt do
  @moduledoc """


  ## Attributes

  *   `DisplayName` (*type:* `String.t`, *default:* `nil`) - The name of the court to be displayed to users.
  *   `Level` (*type:* `integer()`, *default:* `nil`) - Maybe be redundant with the Name. We can remove this later if we don't find it useful. Court Level
  *   `Name` (*type:* `String.t`, *default:* `nil`) - Court id for matching records; "name" is a historic misnomer.
  *   `OriginalName` (*type:* `String.t`, *default:* `nil`) - The name of the court as taken directly from the source document
  *   `namecomponent` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentCourtNameComponent.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :DisplayName => String.t() | nil,
          :Level => integer() | nil,
          :Name => String.t() | nil,
          :OriginalName => String.t() | nil,
          :namecomponent =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentCourtNameComponent.t()
            )
            | nil
        }

  field(:DisplayName)
  field(:Level)
  field(:Name)
  field(:OriginalName)

  field(:namecomponent,
    as: GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentCourtNameComponent,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentCourt do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentCourt.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.LegalCitationCourtDocumentCourt do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
