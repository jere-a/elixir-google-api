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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoPartialNameOptionsParsedDisplayNameSpec do
  @moduledoc """
  These options use more sophisticated logic from a location-aware name detector to parse the full name of a user into structured parts and operate on those parts. For more information on how names are parsed, see the NameOccurrence proto definition: http://google3/quality/peoplesearch/namedetector/detector/proto/name_occurrence.proto?l=50&rcl=334484707 In general, when parsing display names the following rules will apply to *all* specs: - Hyphenated names are broken down: "Angelina Jollie-Pit" is pre-processed as "Angelina Jollie Pitt"; - Prefixes are ignored: "Prof. Albus Dumbledore" is pre-processed as "Albus Dumbledore"; - Auxiliaries are ignored: "Luís de Camões" is pre-processed as "Luís Camões". Next ID: 8

  ## Attributes

  *   `allInitialsFromParsedName` (*type:* `boolean()`, *default:* `nil`) - Extract an initial from each parsed name. For example, "Niels Henrik David Bohr" yields "N. H. D. B.". Other special cases are treated as follows:
  *   `firstInitialAndFirstLastName` (*type:* `boolean()`, *default:* `nil`) - Show the initial of the very first name and the first last name, e.g. "Hugo Daniel Hernandez Garcia" yields "H. Hernandez".
  *   `firstInitialAndVeryLastName` (*type:* `boolean()`, *default:* `nil`) - Show the initial of the very first name and the very last name, e.g. "Ana Maria Silva" yields "A. Silva".
  *   `knowledgeGraphNameShortening` (*type:* `boolean()`, *default:* `nil`) - Shorten the display name using the Knowledge Graph name shortener (go/short-names).
  *   `truncationIndicator` (*type:* `String.t`, *default:* `nil`) - Which truncation indicator to use after each shortened part of the name. Will be ignored for the `knowledge_graph_name_shortening` option.
  *   `veryFirstNameAndAllInitials` (*type:* `boolean()`, *default:* `nil`) - Show the full very first name and all the other initials, e.g. "Ana Maria Silva" yields "Ana M. S.".
  *   `veryFirstNameOnly` (*type:* `boolean()`, *default:* `nil`) - Show the very first name only, e.g. "Ana Maria Silva" yields "Ana".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allInitialsFromParsedName => boolean() | nil,
          :firstInitialAndFirstLastName => boolean() | nil,
          :firstInitialAndVeryLastName => boolean() | nil,
          :knowledgeGraphNameShortening => boolean() | nil,
          :truncationIndicator => String.t() | nil,
          :veryFirstNameAndAllInitials => boolean() | nil,
          :veryFirstNameOnly => boolean() | nil
        }

  field(:allInitialsFromParsedName)
  field(:firstInitialAndFirstLastName)
  field(:firstInitialAndVeryLastName)
  field(:knowledgeGraphNameShortening)
  field(:truncationIndicator)
  field(:veryFirstNameAndAllInitials)
  field(:veryFirstNameOnly)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoPartialNameOptionsParsedDisplayNameSpec do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoPartialNameOptionsParsedDisplayNameSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoPartialNameOptionsParsedDisplayNameSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
