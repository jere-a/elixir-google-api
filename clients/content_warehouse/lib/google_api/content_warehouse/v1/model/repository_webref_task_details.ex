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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTaskDetails do
  @moduledoc """
  Information about what the raters saw, how the information was presented to them, or how they interacted with the task. Next id: 6

  ## Attributes

  *   `experimentId` (*type:* `String.t`, *default:* `nil`) - The id of the experiment in case we are dealing with a refx data experiment. Should only be set in case of data experiments to gather topicality ratings, in order to allow separating these ratings from regular ratings.
  *   `lastSubmitTimestamp` (*type:* `String.t`, *default:* `nil`) - 
  *   `topicDescription` (*type:* `String.t`, *default:* `nil`) - 
  *   `topicName` (*type:* `String.t`, *default:* `nil`) - 
  *   `topicUrl` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :experimentId => String.t() | nil,
          :lastSubmitTimestamp => String.t() | nil,
          :topicDescription => String.t() | nil,
          :topicName => String.t() | nil,
          :topicUrl => String.t() | nil
        }

  field(:experimentId)
  field(:lastSubmitTimestamp)
  field(:topicDescription)
  field(:topicName)
  field(:topicUrl)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTaskDetails do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTaskDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTaskDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
