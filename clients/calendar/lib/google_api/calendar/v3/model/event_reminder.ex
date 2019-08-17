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

defmodule GoogleApi.Calendar.V3.Model.EventReminder do
  @moduledoc """


  ## Attributes

  *   `method` (*type:* `String.t`, *default:* `nil`) - The method used by this reminder. Possible values are:  
      - "email" - Reminders are sent via email. 
      - "sms" - Deprecated. Once this feature is shutdown, the API will no longer return reminders using this method. Any newly added SMS reminders will be ignored. See  Google Calendar SMS notifications to be removed for more information.
      Reminders are sent via SMS. These are only available for G Suite customers. Requests to set SMS reminders for other account types are ignored. 
      - "popup" - Reminders are sent via a UI popup.  
      Required when adding a reminder.
  *   `minutes` (*type:* `integer()`, *default:* `nil`) - Number of minutes before the start of the event when the reminder should trigger. Valid values are between 0 and 40320 (4 weeks in minutes).
      Required when adding a reminder.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :method => String.t(),
          :minutes => integer()
        }

  field(:method)
  field(:minutes)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EventReminder do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventReminder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EventReminder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
