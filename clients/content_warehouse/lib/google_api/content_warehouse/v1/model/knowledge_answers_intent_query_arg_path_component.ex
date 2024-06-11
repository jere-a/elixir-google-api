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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgPathComponent do
  @moduledoc """
  LINT.IfChange(ArgPath) Given a FunctionCall and an Argument somewhere in it, an ArgPath is a list of name-index pairs that uniquely determines the path down to that Argument. For each pair, the |index|, starting from zero, distinguishes between "sibling" (i.e. belonging to the same sub-FunctionCall) Arguments with the same name. For example, given the following FunctionCall: A(X=D(W=5), Z=B(Z=6), Z=C(Y=7)) The path to the Z=6 argument is {{"Z", 0}, {"Z", 0}} It's the first of two Z "siblings" under A, then the only Z under B. The path to the Y=7 argument is {{"Z", 1}, {"Y", 0}} It's the second of two Z "siblings" under A, then the only Y under C. The path to the Z=B(...) argument is {{"Z", 0}} It's the first of two Z "siblings" under A.

  ## Attributes

  *   `argName` (*type:* `String.t`, *default:* `nil`) - 
  *   `index` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :argName => String.t() | nil,
          :index => integer() | nil
        }

  field(:argName)
  field(:index)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgPathComponent do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgPathComponent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgPathComponent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
