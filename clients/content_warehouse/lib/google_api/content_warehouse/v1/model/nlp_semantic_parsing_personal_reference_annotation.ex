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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingPersonalReferenceAnnotation do
  @moduledoc """
  A collection of any number of QRefAnnotations that designate a Copley Personal Reference and its Resolutions. This is used to handle personalized intents such as "navigate to my hotel" or "when is my mom's anniversary". See go/copley. This Annotation may contain only a reference with no resolutions for the failure case (go/copley-punts). TODO(bhorst) Rename this to remove the Copley codename.

  ## Attributes

  *   `reference` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t`, *default:* `nil`) - A Copley Personal Reference represents a user's reference to a something that could be personal entity, e.g. "my hotel", "mom", "brunch".
  *   `resolutions` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t)`, *default:* `nil`) - A Copley Personal Resolution represents the resolution of a Reference, e.g. if the user has a reservation at The Kendall Hotel, the reference "my hotel" could be resolved to The Kendall Hotel, and there would be a QRefAnnotation containing the mid and other data. It is possible for there to be zero resolutions for a given reference.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :reference =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t() | nil,
          :resolutions =>
            list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation.t()) | nil
        }

  field(:reference, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation)

  field(:resolutions,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingQRefAnnotation,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingPersonalReferenceAnnotation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingPersonalReferenceAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingPersonalReferenceAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
