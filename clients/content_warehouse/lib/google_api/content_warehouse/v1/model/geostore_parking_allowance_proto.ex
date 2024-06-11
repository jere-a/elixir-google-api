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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreParkingAllowanceProto do
  @moduledoc """
  Describes the parking allowances for a feature, or the situations and requirements under which one may be permitted to park, such as certain vehicle types, valet parking, and permit parking. Also describes the cost of parking, which may vary based on the time and duration parked. Includes vehicle type, any other conditions for eligibility, and the cost of parking, which may vary based on the time and duration parked. If is_discount is set to true on a given allowance, that allowance represents a discount that can be applied to lower the cost of non-discount allowances specified on feature via parking_provider_feature. In this way, allowances can be 'layered,' i.e. appended, onto each other when denormalizing references via parking_provider_feature.

  ## Attributes

  *   `allowanceType` (*type:* `String.t`, *default:* `nil`) - The type of parking for this allowance. Allowance details only apply to the type of parking specified.
  *   `isDiscount` (*type:* `boolean()`, *default:* `nil`) - If true, this allowance represents a discount rather than an individual rate; any rate values specified in this allowance describe a discount to be applied to the non-discount allowances in the ParkingProto.
  *   `minPurchaseForValidation` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.FreebaseTopic.t)`, *default:* `nil`) - If this rate requires validation, this expresses the minimum purchase required for validation in each applicable currency. Should have an ID of /measurement_unit/money_value and consist of two properties: one with an ID of /measurement_unit/money_value/amount and a float value with the amount, and another with the ID /measurement_unit/money_value/currency and an ID value with the MID of the proper currency (from the /finance/currency type). A value of 0 suggests that no purchase is required. If empty, this suggests that no validation is required for this rate.
  *   `permitType` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreLanguageTaggedTextProto.t)`, *default:* `nil`) - Any additional details about the permit type; e.g. “Zone A”. In any local languages. Should only be set if allowance_type is PERMIT.
  *   `serviceType` (*type:* `list(String.t)`, *default:* `nil`) - The types of services that this parking allowance applies to. For instance, some cities have streets that only allow traditional taxis to pick up passengers.
  *   `timeBasedRate` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeBasedRateProto.t)`, *default:* `nil`) - Describes the rate structures. Each TimeBasedRateProto defines a rate which may apply based on a particular arrival, departure or utilization time; for example, one rate might apply if arriving before 9am, and another might apply regardless of arrival or departure time.
  *   `vehicleType` (*type:* `String.t`, *default:* `nil`) - Restrictions on which vehicle type(s) the allowance applies to. By default, the allowance applies to any vehicle types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowanceType => String.t() | nil,
          :isDiscount => boolean() | nil,
          :minPurchaseForValidation =>
            list(GoogleApi.ContentWarehouse.V1.Model.FreebaseTopic.t()) | nil,
          :permitType =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostoreLanguageTaggedTextProto.t()) | nil,
          :serviceType => list(String.t()) | nil,
          :timeBasedRate =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeBasedRateProto.t()) | nil,
          :vehicleType => String.t() | nil
        }

  field(:allowanceType)
  field(:isDiscount)

  field(:minPurchaseForValidation,
    as: GoogleApi.ContentWarehouse.V1.Model.FreebaseTopic,
    type: :list
  )

  field(:permitType,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreLanguageTaggedTextProto,
    type: :list
  )

  field(:serviceType, type: :list)

  field(:timeBasedRate,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeBasedRateProto,
    type: :list
  )

  field(:vehicleType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreParkingAllowanceProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreParkingAllowanceProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreParkingAllowanceProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
