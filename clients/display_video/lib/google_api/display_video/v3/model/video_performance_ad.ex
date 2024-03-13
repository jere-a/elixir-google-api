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

defmodule GoogleApi.DisplayVideo.V3.Model.VideoPerformanceAd do
  @moduledoc """
  Details for a video performance ad.

  ## Attributes

  *   `actionButtonLabels` (*type:* `list(String.t)`, *default:* `nil`) - The list of text assets shown on the call-to-action button.
  *   `companionBanners` (*type:* `list(GoogleApi.DisplayVideo.V3.Model.ImageAsset.t)`, *default:* `nil`) - The list of companion banners used by this ad.
  *   `customParameters` (*type:* `map()`, *default:* `nil`) - The custom parameters to pass custom values to tracking URL template.
  *   `descriptions` (*type:* `list(String.t)`, *default:* `nil`) - The list of descriptions shown on the call-to-action banner.
  *   `displayUrlBreadcrumb1` (*type:* `String.t`, *default:* `nil`) - The first piece after the domain in the display URL.
  *   `displayUrlBreadcrumb2` (*type:* `String.t`, *default:* `nil`) - The second piece after the domain in the display URL.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - The domain of the display URL.
  *   `finalUrl` (*type:* `String.t`, *default:* `nil`) - The URL address of the webpage that people reach after they click the ad.
  *   `headlines` (*type:* `list(String.t)`, *default:* `nil`) - The list of headlines shown on the call-to-action banner.
  *   `longHeadlines` (*type:* `list(String.t)`, *default:* `nil`) - The list of lone headlines shown on the call-to-action banner.
  *   `trackingUrl` (*type:* `String.t`, *default:* `nil`) - The URL address loaded in the background for tracking purposes.
  *   `videos` (*type:* `list(GoogleApi.DisplayVideo.V3.Model.YoutubeVideoDetails.t)`, *default:* `nil`) - The list of YouTube video assets used by this ad.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionButtonLabels => list(String.t()) | nil,
          :companionBanners => list(GoogleApi.DisplayVideo.V3.Model.ImageAsset.t()) | nil,
          :customParameters => map() | nil,
          :descriptions => list(String.t()) | nil,
          :displayUrlBreadcrumb1 => String.t() | nil,
          :displayUrlBreadcrumb2 => String.t() | nil,
          :domain => String.t() | nil,
          :finalUrl => String.t() | nil,
          :headlines => list(String.t()) | nil,
          :longHeadlines => list(String.t()) | nil,
          :trackingUrl => String.t() | nil,
          :videos => list(GoogleApi.DisplayVideo.V3.Model.YoutubeVideoDetails.t()) | nil
        }

  field(:actionButtonLabels, type: :list)
  field(:companionBanners, as: GoogleApi.DisplayVideo.V3.Model.ImageAsset, type: :list)
  field(:customParameters, type: :map)
  field(:descriptions, type: :list)
  field(:displayUrlBreadcrumb1)
  field(:displayUrlBreadcrumb2)
  field(:domain)
  field(:finalUrl)
  field(:headlines, type: :list)
  field(:longHeadlines, type: :list)
  field(:trackingUrl)
  field(:videos, as: GoogleApi.DisplayVideo.V3.Model.YoutubeVideoDetails, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.VideoPerformanceAd do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.VideoPerformanceAd.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.VideoPerformanceAd do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
