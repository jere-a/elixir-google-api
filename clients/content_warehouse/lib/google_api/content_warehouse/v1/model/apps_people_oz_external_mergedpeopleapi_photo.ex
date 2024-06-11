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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPhoto do
  @moduledoc """


  ## Attributes

  *   `decoration` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoDecorationOverlay.t)`, *default:* `nil`) - Read-only. Use UpdatePersonPhoto to change photo decorations. If this photo is decorated, this field contains information about its decorations. For now, this will contain at most one entry.
  *   `emojiAvatarUrl` (*type:* `String.t`, *default:* `nil`) - URL of an emoji avatar as an image. See go/emoji-cdn. PeopleAPI will return the SVG format so that it can be scaled client side and so that the images will not be animated. All clients that use this field must also have fall-back handling for using the `Photo.url` field if this is empty. When we have FIFE-compatible emoji-image URLs we will drop this field and return the Photo.url instead. Clients that have their own go/emoji-rendering integration may prefer to render the emoji-avatar from `Photo.glyph` field using their rendering system so that the emoji version/style match the rest of the application. For further background, see go/chatroom-avatar-as-roster-metadata. This field will only be populated if all of: - The PersonFieldMetadata `container_type` for the Photo is NAMED_CHAT_ROOM - The chat room has an emoji type avatar image set
  *   `glyph` (*type:* `String.t`, *default:* `nil`) - Unicode emoji representation of the chat room emoji avatar. This can be used by clients that use go/emoji-rendering directly so that they can present this with the same version/style as the rest of their application. This value may also be useful to clients as alt-text for the image. This field will only be populated if all of: - The PersonFieldMetadata `container_type` for the Photo is NAMED_CHAT_ROOM - The chat room has an emoji type avatar image set
  *   `htmlAttribution` (*type:* `list(String.t)`, *default:* `nil`) - A set of HTML data provider attributions that must be shown with the result. Supported for PLACES photos only. See: go/understanding-places-api-attribution-requirements
  *   `isDefault` (*type:* `boolean()`, *default:* `nil`) - True when the photo is synthetic or generated (i.e. a monogram or default photo), false when the person has a custom photo.
  *   `isMonogram` (*type:* `boolean()`, *default:* `nil`) - Indicates if the photo is a monogram avatar. Combined with is_default, the type of photo can be determined by: is_default=true, is_monogram=true: Default monogram avatar. is_default=true, is_monogram=false: Default silhouette avatar. is_default=false: Custom photo. is_monogram is irrelevant in this case.
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t`, *default:* `nil`) - 
  *   `monogramBackground` (*type:* `String.t`, *default:* `nil`) - When is_monogram=true, this is the background color of the monogram photo as a hex RGB formatted string "RRGGBB".
  *   `originalPhoto` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoImageReference.t`, *default:* `nil`) - Read-only. A reference to the original, undecorated profile photo in storage. This field is not stored. It is populated by a live read to /SocialGraphImageService.GetActiveProfilePhoto. This field is only returned when "person.photo.original_photo" is specified in the request mask.
  *   `photoId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPhotoPhotoStorageId.t`, *default:* `nil`) - For writes only. Indicates photo content for person photo-field update. Currently only used for profile-photo updates (not contact photos yet).
  *   `photoToken` (*type:* `String.t`, *default:* `nil`) - Most clients don't need to worry about this field and should just use the `url` to fetch the photo. See go/phototoken-migration-plan for some more context about this field. If you think you want to use this please talk with people-api-eng@ first.
  *   `url` (*type:* `String.t`, *default:* `nil`) - See go/people-api-concepts/photos for info on the different representations of URLs.
  *   `viewerUrl` (*type:* `String.t`, *default:* `nil`) - A URL for a UI to view the photo in its original context. For example, for a place photo, this is the url of a Google Maps page displaying the photo. Supported for place photos only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :decoration =>
            list(GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoDecorationOverlay.t())
            | nil,
          :emojiAvatarUrl => String.t() | nil,
          :glyph => String.t() | nil,
          :htmlAttribution => list(String.t()) | nil,
          :isDefault => boolean() | nil,
          :isMonogram => boolean() | nil,
          :metadata =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t()
            | nil,
          :monogramBackground => String.t() | nil,
          :originalPhoto =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoImageReference.t() | nil,
          :photoId =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPhotoPhotoStorageId.t()
            | nil,
          :photoToken => String.t() | nil,
          :url => String.t() | nil,
          :viewerUrl => String.t() | nil
        }

  field(:decoration,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoDecorationOverlay,
    type: :list
  )

  field(:emojiAvatarUrl)
  field(:glyph)
  field(:htmlAttribution, type: :list)
  field(:isDefault)
  field(:isMonogram)

  field(:metadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata
  )

  field(:monogramBackground)
  field(:originalPhoto, as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoImageReference)

  field(:photoId,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPhotoPhotoStorageId
  )

  field(:photoToken)
  field(:url)
  field(:viewerUrl)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPhoto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPhoto.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPhoto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
