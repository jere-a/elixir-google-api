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

defmodule GoogleApi.Chat.V1.Model.Annotation do
  @moduledoc """
  Output only. Annotations associated with the plain-text body of the message. To add basic formatting to a text message, see [Format text messages](https://developers.google.com/workspace/chat/format-messages). Example plain-text message body: ``` Hello @FooBot how are you!" ``` The corresponding annotations metadata: ``` "annotations":[{ "type":"USER_MENTION", "startIndex":6, "length":7, "userMention": { "user": { "name":"users/{user}", "displayName":"FooBot", "avatarUrl":"https://goo.gl/aeDtrS", "type":"BOT" }, "type":"MENTION" } }] ```

  ## Attributes

  *   `length` (*type:* `integer()`, *default:* `nil`) - Length of the substring in the plain-text message body this annotation corresponds to.
  *   `richLinkMetadata` (*type:* `GoogleApi.Chat.V1.Model.RichLinkMetadata.t`, *default:* `nil`) - The metadata for a rich link.
  *   `slashCommand` (*type:* `GoogleApi.Chat.V1.Model.SlashCommandMetadata.t`, *default:* `nil`) - The metadata for a slash command.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - Start index (0-based, inclusive) in the plain-text message body this annotation corresponds to.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of this annotation.
  *   `userMention` (*type:* `GoogleApi.Chat.V1.Model.UserMentionMetadata.t`, *default:* `nil`) - The metadata of user mention.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :length => integer() | nil,
          :richLinkMetadata => GoogleApi.Chat.V1.Model.RichLinkMetadata.t() | nil,
          :slashCommand => GoogleApi.Chat.V1.Model.SlashCommandMetadata.t() | nil,
          :startIndex => integer() | nil,
          :type => String.t() | nil,
          :userMention => GoogleApi.Chat.V1.Model.UserMentionMetadata.t() | nil
        }

  field(:length)
  field(:richLinkMetadata, as: GoogleApi.Chat.V1.Model.RichLinkMetadata)
  field(:slashCommand, as: GoogleApi.Chat.V1.Model.SlashCommandMetadata)
  field(:startIndex)
  field(:type)
  field(:userMention, as: GoogleApi.Chat.V1.Model.UserMentionMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Annotation do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Annotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Annotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
