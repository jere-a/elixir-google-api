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

defmodule GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationship do
  @moduledoc """
  Description of a semantic Legos annotation. http://go/legos/project.md#semantic-intent-annotations

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - Confidence score. Thresholding at the confidence score at 0.XX yields annotations of precision of at least XX%. Only filled in the intent definition Legos. Please use IsSemanticAnnotationAtConfidenceThreshold() from video/youtube/discovery/legos/annotations/public/legos_annotations_util.h to obtain only intent definition Legos. For more information on the migration please look at go/legos-intent-migration.
  *   `contexts` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationshipContext.t)`, *default:* `nil`) - 
  *   `topicalityScore` (*type:* `float()`, *default:* `nil`) - DEPRECATED. Please use confidence instead. Will be set to the same value as confidence in early January 2019. See go/legos-intent-migration for more information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :contexts =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationshipContext.t()
            )
            | nil,
          :topicalityScore => float() | nil
        }

  field(:confidence)

  field(:contexts,
    as: GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationshipContext,
    type: :list
  )

  field(:topicalityScore)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationship do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationship.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.YoutubeDiscoveryLegosLegosSemanticRelationship do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
