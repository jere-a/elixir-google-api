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

defmodule GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationProductRating do
  @moduledoc """
  Information about a rating provided for a product. This can represent an aggregated rating if count is set. Next Id: 7

  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - Number of ratings/reviews aggregated to create this product rating. If there are no ratings yet, this field will be explicitly set to zero, so whether this field is set should be checked using has_count.
  *   `maxValueMillis` (*type:* `String.t`, *default:* `nil`) - 
  *   `minValueMillis` (*type:* `String.t`, *default:* `nil`) - The lower and upper bounds of the rating values that could be submitted for the product. (Note that it is not the min/max ratings submitted for the product, it is the min/max that can hypothetically be submitted.)
  *   `source` (*type:* `String.t`, *default:* `nil`) - 
  *   `value` (*type:* `float()`, *default:* `nil`) - The value of this rating normalized between 0 and 5. This will not be set if count is set to 0.
  *   `valueMillis` (*type:* `String.t`, *default:* `nil`) - The non-normalized aggregated value of the ratings for this product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t() | nil,
          :maxValueMillis => String.t() | nil,
          :minValueMillis => String.t() | nil,
          :source => String.t() | nil,
          :value => float() | nil,
          :valueMillis => String.t() | nil
        }

  field(:count)
  field(:maxValueMillis)
  field(:minValueMillis)
  field(:source)
  field(:value)
  field(:valueMillis)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationProductRating do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationProductRating.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ShoppingWebentityShoppingAnnotationProductRating do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
