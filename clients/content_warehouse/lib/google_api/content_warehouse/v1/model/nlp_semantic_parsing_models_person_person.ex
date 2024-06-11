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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsPersonPerson do
  @moduledoc """


  ## Attributes

  *   `alternativeNameInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteAlternativeNameInfo.t)`, *default:* `nil`) - Alternative names like "John" for "Joan", with info such as RecognitionAlternateSource indicating where is it from.
  *   `alternativeNames` (*type:* `list(String.t)`, *default:* `nil`) - Alternative names, e.g., names with similar pronunciation, Kathy and Cathy.
  *   `annotationSource` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `contactData` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualityQrewritePersonalContactData.t)`, *default:* `nil`) - Contact metadata. Only available for personal contact.
  *   `evalData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t`, *default:* `nil`) - Required, but should only be used inside Aqua. Must not be used by outside clients!!
  *   `isPersonGroupReference` (*type:* `boolean()`, *default:* `nil`) - Indicates whether $Person is used for person-group reference. If true, then the PersonalContactData in repeated contact_data field probably correspond to a group of different persons, where $Person is used to represent family, kids, parents, etc.
  *   `isPersonalContact` (*type:* `boolean()`, *default:* `nil`) - Whether the person is from personal contacts (e.g. Focus contacts or device contacts) or the person is constructed from a Gaia profile visible to the user (e.g. via Family Service).
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the person without normalizations, preserves casing of the raw text, but removes possible prefix/suffix. For example: raw_text: "Mr. John" normalized_text: "john" name: "John" raw_text: "Tüll" normalized_text: "tuell" name: "Tüll"
  *   `normalizedText` (*type:* `String.t`, *default:* `nil`) - Normalized text produced by annotator. Some annotators generate a normalized version to help better match with contact list.
  *   `pkgSemantics` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t`, *default:* `nil`) - Contains information about a Copley Person reference (go/copley-people). Note that this contains no information about the resolved people (e.g. names, phone numbers) but only about the user's reference. Resolution metadata is stored in contact_data.pkg_person.
  *   `rawText` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternativeNameInfo =>
            list(GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteAlternativeNameInfo.t()) | nil,
          :alternativeNames => list(String.t()) | nil,
          :annotationSource => list(String.t()) | nil,
          :contactData =>
            list(GoogleApi.ContentWarehouse.V1.Model.QualityQrewritePersonalContactData.t()) | nil,
          :evalData =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t() | nil,
          :isPersonGroupReference => boolean() | nil,
          :isPersonalContact => boolean() | nil,
          :name => String.t() | nil,
          :normalizedText => String.t() | nil,
          :pkgSemantics =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t() | nil,
          :rawText => String.t() | nil
        }

  field(:alternativeNameInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteAlternativeNameInfo,
    type: :list
  )

  field(:alternativeNames, type: :list)
  field(:annotationSource, type: :list)

  field(:contactData,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityQrewritePersonalContactData,
    type: :list
  )

  field(:evalData, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData)
  field(:isPersonGroupReference)
  field(:isPersonalContact)
  field(:name)
  field(:normalizedText)
  field(:pkgSemantics, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation)
  field(:rawText)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsPersonPerson do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsPersonPerson.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsPersonPerson do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
