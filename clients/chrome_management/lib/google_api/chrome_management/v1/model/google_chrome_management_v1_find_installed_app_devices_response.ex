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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1FindInstalledAppDevicesResponse do
  @moduledoc """
  Response containing a list of devices with queried app installed.

  ## Attributes

  *   `devices` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1Device.t)`, *default:* `nil`) - A list of devices which have the app installed. Sorted in ascending alphabetical order on the Device.machine field.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to specify the next page of the request.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - Total number of devices matching request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :devices =>
            list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1Device.t()) | nil,
          :nextPageToken => String.t() | nil,
          :totalSize => integer() | nil
        }

  field(:devices,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1Device,
    type: :list
  )

  field(:nextPageToken)
  field(:totalSize)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1FindInstalledAppDevicesResponse do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1FindInstalledAppDevicesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1FindInstalledAppDevicesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end