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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantVerticalsHomeautomationProtoCommonEventTrigger do
  @moduledoc """
  LINT.IfChange(proto_event_trigger) Next id: 5

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - 
  *   `eventTriggerPayload` (*type:* `map()`, *default:* `nil`) - Detailed settings for the event trigger; unset if not applicable.
  *   `eventTriggerType` (*type:* `String.t`, *default:* `nil`) - Different event type may have different settings. For example: * SCHEDULED will have event_trigger_payload of cs/symbol:assistant.verticals.voice_shortcut.proto.Schedule * LOCATION will have event_trigger_payload of cs/symbol:assistant.verticals.voice_shortcut.proto.LocationTriggerEvent
  *   `triggerSource` (*type:* `integer()`, *default:* `nil`) - Unique identifier for the EventTrigger, e.g. SCHEDULED_ROUTINES. See the enum values of cs/symbol:WorkflowTriggerInput.TriggerSource
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean() | nil,
          :eventTriggerPayload => map() | nil,
          :eventTriggerType => String.t() | nil,
          :triggerSource => integer() | nil
        }

  field(:enabled)
  field(:eventTriggerPayload, type: :map)
  field(:eventTriggerType)
  field(:triggerSource)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantVerticalsHomeautomationProtoCommonEventTrigger do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantVerticalsHomeautomationProtoCommonEventTrigger.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantVerticalsHomeautomationProtoCommonEventTrigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
