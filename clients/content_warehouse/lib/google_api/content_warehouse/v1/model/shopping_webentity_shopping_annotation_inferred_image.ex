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

defmodule GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationInferredImage do
  @moduledoc """
  Images inferred from context instead of propagated from Shopping backends. The same image might be inferred via different means; then it may appear multiple times in Offer.inferred_images list with different values of inferred_image_type field.

  ## Attributes

  *   `inferredImageId` (*type:* `String.t`, *default:* `nil`) - 
  *   `inferredImageSource` (*type:* `String.t`, *default:* `nil`) - 
  *   `inferredImageType` (*type:* `String.t`, *default:* `nil`) - 
  *   `neardupInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationInferredImageNeardupInfo.t)`, *default:* `nil`) - This field will only be populated if the inferred image is a neardup of an inferred image. It stores the type and source of the images it is a neardup of.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inferredImageId => String.t() | nil,
          :inferredImageSource => String.t() | nil,
          :inferredImageType => String.t() | nil,
          :neardupInfo =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationInferredImageNeardupInfo.t()
            )
            | nil
        }

  field(:inferredImageId)
  field(:inferredImageSource)
  field(:inferredImageType)

  field(:neardupInfo,
    as:
      GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationInferredImageNeardupInfo,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationInferredImage do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationInferredImage.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationInferredImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
