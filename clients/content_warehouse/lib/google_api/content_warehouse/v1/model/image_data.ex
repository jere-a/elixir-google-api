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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageData do
  @moduledoc """
  This defines the per-doc data which is extracted from thumbnails and propagated over to indexing. It contains all information that can be used for restricts. Next tag id: 135

  ## Attributes

  *   `expirationTimestamp` (*type:* `String.t`, *default:* `nil`) - The thumbnail is guaranteed to be kept in the serving system until the expiration timestamp has passed, in microseconds.
  *   `h2c` (*type:* `number()`, *default:* `nil`) - 
  *   `corpusSelectionInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.CorpusSelectionInfo.t)`, *default:* `nil`) - Corpus scoring info for images indexed through Amarna.
  *   `isUnwantedContent` (*type:* `boolean()`, *default:* `nil`) - Field to indicate the image is unwanted for search index. The data is propagated from amarna to alexandria to be annotated in the cdoc. Refer to image/repository/proto/unwanted_content.proto for more info.
  *   `colorScore` (*type:* `list(number())`, *default:* `nil`) - Colorness scores for the image. Each score represents the amount of a particular color in the image. At the current time, there are 12 colors, so there should always be 0 or 12 values in this array. The 12 colors are black, blue, brown, gray, green, orange, pink, purple, red, teal, white, yellow. The convention is that the scores are stored in alphabetical order, so the first score is black, and the last score is yellow.
  *   `isIndexedByImagesearch` (*type:* `boolean()`, *default:* `nil`) - If this image was not selected for indexing by imagesearch, these fields say so and explain why.
  *   `thumbHeight` (*type:* `integer()`, *default:* `nil`) - 
  *   `lastCrawlTime` (*type:* `integer()`, *default:* `nil`) - Most recent timestamp in seconds when this URL was crawled.
  *   `nearDupFeaturesVersion` (*type:* `integer()`, *default:* `nil`) - Image content derived data used for finding image near dups. NOTE: This hash is generated by V1 hash computation.
  *   `clipartDetectorScore` (*type:* `number()`, *default:* `nil`) - Image content based classifier scores.
  *   `thumbnail` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageDataThumbnail.t)`, *default:* `nil`) - 
  *   `colorScoreVersion` (*type:* `integer()`, *default:* `nil`) - 
  *   `contentFirstCrawlTime` (*type:* `integer()`, *default:* `nil`) - Earliest known crawl time among all neardups of this image (go/imagecontentage).
  *   `lineartDetectorVersion` (*type:* `integer()`, *default:* `nil`) - 
  *   `embeddedMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageExifImageEmbeddedMetadata.t`, *default:* `nil`) - the EXIF/IPTC metadata
  *   `width` (*type:* `integer()`, *default:* `nil`) - 
  *   `imageContentQueryBoost` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageContentQueryBoost.t`, *default:* `nil`) - Image Content Scored per query boosts. Currently this is filled by the pamir algorithm and populates the pamir_section.
  *   `shoppingProductInformation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformation.t`, *default:* `nil`) - The Shoppable Images product information to be annotated in the Cdoc. All fields will be populated except the product location bounding box.
  *   `height` (*type:* `integer()`, *default:* `nil`) - Height
  *   `imageLicenseInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageSearchImageLicenseInfo.t`, *default:* `nil`) - Indicates license info of this image, which will tell image search users how to use this image legally.
  *   `extendedExif` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PhotosImageMetadata.t`, *default:* `nil`) - The EXIF generated by photos backend team's (more specifically FIFE's) thumbnailer library. This exif model is more comprehensive since a dedicated team is constantly improving it and adding new fields over time. This is currently populated by moonshine for selected corpora.
  *   `nimaVq` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryNimaOutput.t`, *default:* `nil`) - Productionized Nima VQ score.
  *   `imagerank` (*type:* `integer()`, *default:* `nil`) - 
  *   `imageQualityClickSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageQualityNavboostImageQualityClickSignals.t`, *default:* `nil`) - Click signals for measuring image quality (e.g., usefulness, presentation, appealingness, and engagingness). Click signals are considered Search CPS Personal Data.
  *   `finalPornScore` (*type:* `number()`, *default:* `nil`) - A [0..1] porn score based on some image-level features (like content score, referrer statistics, navboost queries, etc.). See class RiflePornScorer for more details.
  *   `coloredPixelsFrac` (*type:* `number()`, *default:* `nil`) - Fraction of the image that contains pixels over a certain saturation threshold: can be used to determine if the image is grayscale or not.
  *   `whiteBackgroundScoreVersion` (*type:* `integer()`, *default:* `nil`) - Image is likely an object on a white background (value on [0,1]).
  *   `lineartDetectorScore` (*type:* `number()`, *default:* `nil`) - 
  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - Superlabels generated cluster id. This field is going to be deprecated, please use `superlabels_v2_cluster_id` instead.
  *   `restrictStrings` (*type:* `list(String.t)`, *default:* `nil`) - A string representation of all the restricts associated with this image.
  *   `hateLogoDetection` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingAnnotationGroup.t`, *default:* `nil`) - Hate logo detections from the VSS logo_recognition module.
  *   `clickMagnetScore` (*type:* `number()`, *default:* `nil`) - A score in (0, 1] to indicate how likely this image is considered as a click magnet based on clicks received from bad queries.
  *   `nearDupFeaturesSmallVersion` (*type:* `integer()`, *default:* `nil`) - The following fields contain information about a smaller and less powerful version of the hash, needed for neardup retrieval. A compressed and an encoded version of the small hash are stored below. The smaller hash may have a few variants to increase recall. NOTE: This hash is generated by V2 hash computation. A compressed version of the small hash. Currently, a 4-byte fingerprint.
  *   `styleAestheticsScore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleAestheticsScoreSignals.t`, *default:* `nil`) - Aesthetics score of a style image.
  *   `smearedTopWebLandingPageDocids` (*type:* `list(String.t)`, *default:* `nil`) - Web docids that correspond to high ranked smeared landing pages for this image. Used for conditional retrieval of actionable landing pages for image search.
  *   `robotedAgents` (*type:* `String.t`, *default:* `nil`) - CSV list of user agents for which this image should be considered roboted. Note: All images are crawled using googlebot-images, this exists for clients that require additional restrictions beyond googlebot-images such as news.
  *   `size` (*type:* `integer()`, *default:* `nil`) - Size in bytes of original (non-thumbnail)
  *   `canonicalDocid` (*type:* `String.t`, *default:* `nil`) - This is the image docid used in image search. For ImageData protos coming from Alexandria/Freshdocs, this is a 'required' field that MUST be populated.
  *   `pornFlagData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PornFlagData.t`, *default:* `nil`) - Used by the segindexer for combined www+image indices.
  *   `personAttributes` (*type:* `GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonAttributes.t`, *default:* `nil`) - Contains person attributes from the LookNet-Person model and the Style AI Iconic Person Scorer for the most iconic person in a style image.
  *   `generatedImageLikelihoodSignal` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryGeneratedImageLikelihoodSignal.t`, *default:* `nil`) - The signal about the likelihood of whether the image is generated by Google.
  *   `clipartDetectorVersion` (*type:* `integer()`, *default:* `nil`) - 
  *   `testingScore` (*type:* `integer()`, *default:* `nil`) - This field is for testing purposes, more information in go/media-dirt-2022.
  *   `ocrGoodoc` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocDocument.t`, *default:* `nil`) - Pruned OCR Goodoc see vss_aksara_ocr_util.h for the fields copied.
  *   `smearedTopWebLandingPages` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.SmearedWebLandingPageEntry.t)`, *default:* `nil`) - 
  *   `whiteBackgroundScore` (*type:* `number()`, *default:* `nil`) - 
  *   `docid` (*type:* `String.t`, *default:* `nil`) - fingerprint(non-canonicalized absolute image url) This is *not* the image docid. Use canonical_docid instead. For ImageData protos coming from Alexandria/Freshdocs, this is a 'required' field that MUST be populated. But once again, this is very likely NOT something you need. Use canonical_docid instead.
  *   `orbitIntents` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityOrbitOrbitImageIntents.t`, *default:* `nil`) - Orbit intents. More details on go/orbit-in-image-indexing.
  *   `flags` (*type:* `integer()`, *default:* `nil`) - Use image_perdoc.h to read/write 'flags'.
  *   `thumbWidth` (*type:* `integer()`, *default:* `nil`) - Thumbnail width.
  *   `packedFullFaceInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FaceIndexing.t`, *default:* `nil`) - Encodes face number and largest face frac into a small package for storage in mustang. This is calculated directly from FaceDetectionResult.
  *   `crops` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ContentAwareCropsIndexing.t`, *default:* `nil`) - The content-aware cropping information.
  *   `ocrTextboxes` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.OcrPhotoTextBox.t)`, *default:* `nil`) - Text lines detected by OCR engine.
  *   `h2i` (*type:* `number()`, *default:* `nil`) - 'Hovers to Impressions' and 'Hovers to Clicks' ratios for an image. These are considered Search CPS Personal Data due to concerns that they may be used to reidentify or confirm the presence of specific singleton (unique) queries.
  *   `isMultiframe` (*type:* `boolean()`, *default:* `nil`) - True if the original image contains multiple frames (e.g., for animated or stereoscopic images).
  *   `ocrTaser` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocDocument.t`, *default:* `nil`) - Ocr detected by ocr_taser module.
  *   `featuredImageProp` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageMonetizationFeaturedImageProperties.t`, *default:* `nil`) - Properties used in featured imagesearch project. inspiration_score indicates how well an image is related to products, or how inspirational it is.
  *   `unavailableAfterSecs` (*type:* `String.t`, *default:* `nil`) - Time in seconds since epoch after which this image should be considered unavailable.
  *   `imageRegions` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRegionsImageRegions.t`, *default:* `nil`) - Regions detected within the image (go/images-region-search-edd). Regions contain bounding boxes circumscribing objects of interest in the image, along with object labels. Regions may overlap.
  *   `fileFormat` (*type:* `String.t`, *default:* `nil`) - True file format (not extension).
  *   `deepTags` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CommerceDatastoreImageDeepTags.t`, *default:* `nil`) - VSS generated deep tags for shopping images.
  *   `adaboostImageFeaturePornVersion` (*type:* `integer()`, *default:* `nil`) - 
  *   `noIndexReason` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `personDetectionSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignals.t`, *default:* `nil`) - Contains person detection result.
  *   `flowOutput` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd.t`, *default:* `nil`) - The output of various features generated by the Flow framework, most importantly data from Starburst (go/starburst). Do NOT interact with the internals of this proto since they may change over time. Instead, use the existing interfaces that consume FlowProtoProd's directly, e.g., image/mustang/content/image_content_distance.h For more info, please contact image-content-core@.
  *   `photoDetectorVersion` (*type:* `integer()`, *default:* `nil`) - 
  *   `numberFaces` (*type:* `integer()`, *default:* `nil`) - Number of faces detected in the image
  *   `nearDupFeaturesSmall` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `deepImageEngagingness` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryDeepImageEngagingnessOutput.t`, *default:* `nil`) - Productionized Deep Image Engagingness score.
  *   `isVisible` (*type:* `boolean()`, *default:* `nil`) - True if the image is inlined on the page (typicially via ) or false if the image is linked to (via an href).
  *   `url` (*type:* `String.t`, *default:* `nil`) - Canonicalized absolute image url.
  *   `licensedWebImagesOptInState` (*type:* `String.t`, *default:* `nil`) - Indicates the web-master opt-in state of this image, and will be used for Google products to decide usage rights like showing large previews.
  *   `rankInNeardupCluster` (*type:* `integer()`, *default:* `nil`) - Rank in near-dup cluster (go/image-rank-in-neardup-cluster). The rank is 1-indexed: rank 1 is the best.
  *   `thumbSize` (*type:* `integer()`, *default:* `nil`) - 
  *   `codomainStrength` (*type:* `integer()`, *default:* `nil`) - Like is_visible, this is a property of the (web-doc, img_url) pair not just the image. A high codomain_strength indicates high confidence based on collected stats that the image is hosted on a companion domain. If not enough stats are available for codomain strength, this field may be absent in ImageData, and hence the CompositeDoc. Do not place negative values here. Permitted values range between 0 and image_quality_codomain::kMaxCodomainStrength defined in //image/quality/codomain/codomain-stats-utils.h.
  *   `deepCrop` (*type:* `GoogleApi.ContentWarehouse.V1.Model.DeepCropIndexing.t`, *default:* `nil`) - DeepCrop based cropping information. See go/creatism/deepcrop for details.
  *   `nearDupFeatures` (*type:* `String.t`, *default:* `nil`) - 
  *   `photoDetectorScore` (*type:* `number()`, *default:* `nil`) - 
  *   `firstCrawlTime` (*type:* `integer()`, *default:* `nil`) - Earliest known timestamp about this image. Today, this is the timestamp when the content key was generated for this image. The time is in seconds.
  *   `adaboostImageFeaturePorn` (*type:* `number()`, *default:* `nil`) - Warning: adaboost_image_feature_porn* and imageFeaturePorn fields are DEPRECATED in favor of brain_porn_scores. Please do not use them. Contact safesearch@ for transition advice.
  *   `brainPornScores` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentBrainPornAnnotation.t`, *default:* `nil`) - A [0..1] SafeSearch scores based on image pixels, using Google Brain: porn, csai, violence, medical, and spoof. For porn only, if available prefer final_porn_score as it should be more precise than brain_porn_scores.porn_score.
  *   `styleImageType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignals.t`, *default:* `nil`) - Prediction of a style image type: Stage, Stock, Street or Outfits.
  *   `animatedImageData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryAnimatedImagePerdocData.t`, *default:* `nil`) - Present for animated images only: additional animatated image perdoc data.
  *   `onPageAlternateUrl` (*type:* `String.t`, *default:* `nil`) - For an image not explicitly visible on this page, the following url is the one which most closely matches it.
  *   `largestFaceFrac` (*type:* `number()`, *default:* `nil`) - Fraction of image covered by the largest face (should match largestFaceFraction, but without scaling). In perdocs, is set only if numberFaces > 0.
  *   `imageExactBoost` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageExactBoost.t`, *default:* `nil`) - A set of query fingerprints and confidence scores. There queries are supposed to be relevant to the image with high confidence.
  *   `brainPornScoresVersion` (*type:* `String.t`, *default:* `nil`) - A string that indicates the version of SafeSearch classifier used to compute brain_porn_scores.
  *   `multibangKgEntities` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageDataMultibangEntities.t`, *default:* `nil`) - 
  *   `adaboostImageFeaturePornMinorVersion` (*type:* `integer()`, *default:* `nil`) - 
  *   `largestFaceFraction` (*type:* `integer()`, *default:* `nil`) - Fraction of image covered by the largest face, scaled by 1000. Warning: Is DEPRECATED in favor of largest_face_frac. Do not use.
  *   `finalPornScoreVersion` (*type:* `String.t`, *default:* `nil`) - A string that indicates the version of SafeSearch classifier used to compute final_porn_score.
  *   `superlabelsV2ClusterId` (*type:* `String.t`, *default:* `nil`) - Superlabels V2 generated cluster id.
  *   `isIipInScope` (*type:* `boolean()`, *default:* `nil`) - IIP in scope signal (go/iip). Set to true if the image is annotated with any iip_in_scope entities (go/iukp-trust-v2).
  *   `firstTimeSeenOnDocSec` (*type:* `integer()`, *default:* `nil`) - The first time this image URL was seen on the containing web page. Only set during web indexing.
  *   `nimaAva` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryNimaOutput.t`, *default:* `nil`) - Productionized Nima AVA score. Both this field and nima_vq were added on the top of nima_ava_score and nima_vq_score because the signals are already integrated with Batch Amarna in image/repository/schema/global_output_tags.h using NimaOutput.
  *   `precomputedRestricts` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PrecomputedRestricts.t`, *default:* `nil`) - Restricts computed before building a Mustang index.
  *   `linkinfoType` (*type:* `String.t`, *default:* `nil`) - Bitmask of LinkInfo enum in google3/indexing/converter/outlinks/linkinfo.h.
  *   `indexedVerticals` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageDataVerticalIndexingInfoImage.t)`, *default:* `nil`) - Vertical indexing information for the document and associated image outlinks.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expirationTimestamp => String.t() | nil,
          :h2c => number() | nil,
          :corpusSelectionInfo =>
            list(GoogleApi.ContentWarehouse.V1.Model.CorpusSelectionInfo.t()) | nil,
          :isUnwantedContent => boolean() | nil,
          :colorScore => list(number()) | nil,
          :isIndexedByImagesearch => boolean() | nil,
          :thumbHeight => integer() | nil,
          :lastCrawlTime => integer() | nil,
          :nearDupFeaturesVersion => integer() | nil,
          :clipartDetectorScore => number() | nil,
          :thumbnail => list(GoogleApi.ContentWarehouse.V1.Model.ImageDataThumbnail.t()) | nil,
          :colorScoreVersion => integer() | nil,
          :contentFirstCrawlTime => integer() | nil,
          :lineartDetectorVersion => integer() | nil,
          :embeddedMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.ImageExifImageEmbeddedMetadata.t() | nil,
          :width => integer() | nil,
          :imageContentQueryBoost =>
            GoogleApi.ContentWarehouse.V1.Model.ImageContentQueryBoost.t() | nil,
          :shoppingProductInformation =>
            GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformation.t()
            | nil,
          :height => integer() | nil,
          :imageLicenseInfo =>
            GoogleApi.ContentWarehouse.V1.Model.ImageSearchImageLicenseInfo.t() | nil,
          :extendedExif => GoogleApi.ContentWarehouse.V1.Model.PhotosImageMetadata.t() | nil,
          :nimaVq => GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryNimaOutput.t() | nil,
          :imagerank => integer() | nil,
          :imageQualityClickSignals =>
            GoogleApi.ContentWarehouse.V1.Model.ImageQualityNavboostImageQualityClickSignals.t()
            | nil,
          :finalPornScore => number() | nil,
          :coloredPixelsFrac => number() | nil,
          :whiteBackgroundScoreVersion => integer() | nil,
          :lineartDetectorScore => number() | nil,
          :clusterId => String.t() | nil,
          :restrictStrings => list(String.t()) | nil,
          :hateLogoDetection =>
            GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingAnnotationGroup.t()
            | nil,
          :clickMagnetScore => number() | nil,
          :nearDupFeaturesSmallVersion => integer() | nil,
          :styleAestheticsScore =>
            GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleAestheticsScoreSignals.t() | nil,
          :smearedTopWebLandingPageDocids => list(String.t()) | nil,
          :robotedAgents => String.t() | nil,
          :size => integer() | nil,
          :canonicalDocid => String.t() | nil,
          :pornFlagData => GoogleApi.ContentWarehouse.V1.Model.PornFlagData.t() | nil,
          :personAttributes =>
            GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonAttributes.t() | nil,
          :generatedImageLikelihoodSignal =>
            GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryGeneratedImageLikelihoodSignal.t()
            | nil,
          :clipartDetectorVersion => integer() | nil,
          :testingScore => integer() | nil,
          :ocrGoodoc => GoogleApi.ContentWarehouse.V1.Model.GoodocDocument.t() | nil,
          :smearedTopWebLandingPages =>
            list(GoogleApi.ContentWarehouse.V1.Model.SmearedWebLandingPageEntry.t()) | nil,
          :whiteBackgroundScore => number() | nil,
          :docid => String.t() | nil,
          :orbitIntents =>
            GoogleApi.ContentWarehouse.V1.Model.QualityOrbitOrbitImageIntents.t() | nil,
          :flags => integer() | nil,
          :thumbWidth => integer() | nil,
          :packedFullFaceInfo => GoogleApi.ContentWarehouse.V1.Model.FaceIndexing.t() | nil,
          :crops => GoogleApi.ContentWarehouse.V1.Model.ContentAwareCropsIndexing.t() | nil,
          :ocrTextboxes => list(GoogleApi.ContentWarehouse.V1.Model.OcrPhotoTextBox.t()) | nil,
          :h2i => number() | nil,
          :isMultiframe => boolean() | nil,
          :ocrTaser => GoogleApi.ContentWarehouse.V1.Model.GoodocDocument.t() | nil,
          :featuredImageProp =>
            GoogleApi.ContentWarehouse.V1.Model.ImageMonetizationFeaturedImageProperties.t() | nil,
          :unavailableAfterSecs => String.t() | nil,
          :imageRegions => GoogleApi.ContentWarehouse.V1.Model.ImageRegionsImageRegions.t() | nil,
          :fileFormat => String.t() | nil,
          :deepTags =>
            GoogleApi.ContentWarehouse.V1.Model.CommerceDatastoreImageDeepTags.t() | nil,
          :adaboostImageFeaturePornVersion => integer() | nil,
          :noIndexReason => list(String.t()) | nil,
          :personDetectionSignals =>
            GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignals.t() | nil,
          :flowOutput => GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd.t() | nil,
          :photoDetectorVersion => integer() | nil,
          :numberFaces => integer() | nil,
          :nearDupFeaturesSmall => list(String.t()) | nil,
          :deepImageEngagingness =>
            GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryDeepImageEngagingnessOutput.t()
            | nil,
          :isVisible => boolean() | nil,
          :url => String.t() | nil,
          :licensedWebImagesOptInState => String.t() | nil,
          :rankInNeardupCluster => integer() | nil,
          :thumbSize => integer() | nil,
          :codomainStrength => integer() | nil,
          :deepCrop => GoogleApi.ContentWarehouse.V1.Model.DeepCropIndexing.t() | nil,
          :nearDupFeatures => String.t() | nil,
          :photoDetectorScore => number() | nil,
          :firstCrawlTime => integer() | nil,
          :adaboostImageFeaturePorn => number() | nil,
          :brainPornScores =>
            GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentBrainPornAnnotation.t()
            | nil,
          :styleImageType =>
            GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignals.t() | nil,
          :animatedImageData =>
            GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryAnimatedImagePerdocData.t() | nil,
          :onPageAlternateUrl => String.t() | nil,
          :largestFaceFrac => number() | nil,
          :imageExactBoost => GoogleApi.ContentWarehouse.V1.Model.ImageExactBoost.t() | nil,
          :brainPornScoresVersion => String.t() | nil,
          :multibangKgEntities =>
            GoogleApi.ContentWarehouse.V1.Model.ImageDataMultibangEntities.t() | nil,
          :adaboostImageFeaturePornMinorVersion => integer() | nil,
          :largestFaceFraction => integer() | nil,
          :finalPornScoreVersion => String.t() | nil,
          :superlabelsV2ClusterId => String.t() | nil,
          :isIipInScope => boolean() | nil,
          :firstTimeSeenOnDocSec => integer() | nil,
          :nimaAva => GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryNimaOutput.t() | nil,
          :precomputedRestricts =>
            GoogleApi.ContentWarehouse.V1.Model.PrecomputedRestricts.t() | nil,
          :linkinfoType => String.t() | nil,
          :indexedVerticals =>
            list(GoogleApi.ContentWarehouse.V1.Model.ImageDataVerticalIndexingInfoImage.t()) | nil
        }

  field(:expirationTimestamp)
  field(:h2c)

  field(:corpusSelectionInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.CorpusSelectionInfo,
    type: :list
  )

  field(:isUnwantedContent)
  field(:colorScore, type: :list)
  field(:isIndexedByImagesearch)
  field(:thumbHeight)
  field(:lastCrawlTime)
  field(:nearDupFeaturesVersion)
  field(:clipartDetectorScore)
  field(:thumbnail, as: GoogleApi.ContentWarehouse.V1.Model.ImageDataThumbnail, type: :list)
  field(:colorScoreVersion)
  field(:contentFirstCrawlTime)
  field(:lineartDetectorVersion)
  field(:embeddedMetadata, as: GoogleApi.ContentWarehouse.V1.Model.ImageExifImageEmbeddedMetadata)
  field(:width)
  field(:imageContentQueryBoost, as: GoogleApi.ContentWarehouse.V1.Model.ImageContentQueryBoost)

  field(:shoppingProductInformation,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformation
  )

  field(:height)
  field(:imageLicenseInfo, as: GoogleApi.ContentWarehouse.V1.Model.ImageSearchImageLicenseInfo)
  field(:extendedExif, as: GoogleApi.ContentWarehouse.V1.Model.PhotosImageMetadata)
  field(:nimaVq, as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryNimaOutput)
  field(:imagerank)

  field(:imageQualityClickSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageQualityNavboostImageQualityClickSignals
  )

  field(:finalPornScore)
  field(:coloredPixelsFrac)
  field(:whiteBackgroundScoreVersion)
  field(:lineartDetectorScore)
  field(:clusterId)
  field(:restrictStrings, type: :list)

  field(:hateLogoDetection,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingAnnotationGroup
  )

  field(:clickMagnetScore)
  field(:nearDupFeaturesSmallVersion)

  field(:styleAestheticsScore,
    as: GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleAestheticsScoreSignals
  )

  field(:smearedTopWebLandingPageDocids, type: :list)
  field(:robotedAgents)
  field(:size)
  field(:canonicalDocid)
  field(:pornFlagData, as: GoogleApi.ContentWarehouse.V1.Model.PornFlagData)

  field(:personAttributes,
    as: GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonAttributes
  )

  field(:generatedImageLikelihoodSignal,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryGeneratedImageLikelihoodSignal
  )

  field(:clipartDetectorVersion)
  field(:testingScore)
  field(:ocrGoodoc, as: GoogleApi.ContentWarehouse.V1.Model.GoodocDocument)

  field(:smearedTopWebLandingPages,
    as: GoogleApi.ContentWarehouse.V1.Model.SmearedWebLandingPageEntry,
    type: :list
  )

  field(:whiteBackgroundScore)
  field(:docid)
  field(:orbitIntents, as: GoogleApi.ContentWarehouse.V1.Model.QualityOrbitOrbitImageIntents)
  field(:flags)
  field(:thumbWidth)
  field(:packedFullFaceInfo, as: GoogleApi.ContentWarehouse.V1.Model.FaceIndexing)
  field(:crops, as: GoogleApi.ContentWarehouse.V1.Model.ContentAwareCropsIndexing)
  field(:ocrTextboxes, as: GoogleApi.ContentWarehouse.V1.Model.OcrPhotoTextBox, type: :list)
  field(:h2i)
  field(:isMultiframe)
  field(:ocrTaser, as: GoogleApi.ContentWarehouse.V1.Model.GoodocDocument)

  field(:featuredImageProp,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageMonetizationFeaturedImageProperties
  )

  field(:unavailableAfterSecs)
  field(:imageRegions, as: GoogleApi.ContentWarehouse.V1.Model.ImageRegionsImageRegions)
  field(:fileFormat)
  field(:deepTags, as: GoogleApi.ContentWarehouse.V1.Model.CommerceDatastoreImageDeepTags)
  field(:adaboostImageFeaturePornVersion)
  field(:noIndexReason, type: :list)

  field(:personDetectionSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignals
  )

  field(:flowOutput, as: GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd)
  field(:photoDetectorVersion)
  field(:numberFaces)
  field(:nearDupFeaturesSmall, type: :list)

  field(:deepImageEngagingness,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryDeepImageEngagingnessOutput
  )

  field(:isVisible)
  field(:url)
  field(:licensedWebImagesOptInState)
  field(:rankInNeardupCluster)
  field(:thumbSize)
  field(:codomainStrength)
  field(:deepCrop, as: GoogleApi.ContentWarehouse.V1.Model.DeepCropIndexing)
  field(:nearDupFeatures)
  field(:photoDetectorScore)
  field(:firstCrawlTime)
  field(:adaboostImageFeaturePorn)

  field(:brainPornScores,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentBrainPornAnnotation
  )

  field(:styleImageType,
    as: GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStyleStyleImageTypeSignals
  )

  field(:animatedImageData,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryAnimatedImagePerdocData
  )

  field(:onPageAlternateUrl)
  field(:largestFaceFrac)
  field(:imageExactBoost, as: GoogleApi.ContentWarehouse.V1.Model.ImageExactBoost)
  field(:brainPornScoresVersion)
  field(:multibangKgEntities, as: GoogleApi.ContentWarehouse.V1.Model.ImageDataMultibangEntities)
  field(:adaboostImageFeaturePornMinorVersion)
  field(:largestFaceFraction)
  field(:finalPornScoreVersion)
  field(:superlabelsV2ClusterId)
  field(:isIipInScope)
  field(:firstTimeSeenOnDocSec)
  field(:nimaAva, as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryNimaOutput)
  field(:precomputedRestricts, as: GoogleApi.ContentWarehouse.V1.Model.PrecomputedRestricts)
  field(:linkinfoType)

  field(:indexedVerticals,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageDataVerticalIndexingInfoImage,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ImageData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ImageData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
