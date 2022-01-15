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

defmodule GoogleApi.Dataproc.V1.Model.SparkBatch do
  @moduledoc """
  A configuration for running an Apache Spark (http://spark.apache.org/) batch workload.

  ## Attributes

  *   `archiveUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  *   `args` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The arguments to pass to the driver. Do not include arguments that can be set as batch properties, such as --conf, since a collision can occur that causes an incorrect batch submission.
  *   `fileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of files to be placed in the working directory of each executor.
  *   `jarFileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of jar files to add to the classpath of the Spark driver and tasks.
  *   `mainClass` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the driver main class. The jar file that contains the class must be in the classpath or specified in jar_file_uris.
  *   `mainJarFileUri` (*type:* `String.t`, *default:* `nil`) - Optional. The HCFS URI of the jar file that contains the main class.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :archiveUris => list(String.t()) | nil,
          :args => list(String.t()) | nil,
          :fileUris => list(String.t()) | nil,
          :jarFileUris => list(String.t()) | nil,
          :mainClass => String.t() | nil,
          :mainJarFileUri => String.t() | nil
        }

  field(:archiveUris, type: :list)
  field(:args, type: :list)
  field(:fileUris, type: :list)
  field(:jarFileUris, type: :list)
  field(:mainClass)
  field(:mainJarFileUri)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.SparkBatch do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.SparkBatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.SparkBatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
