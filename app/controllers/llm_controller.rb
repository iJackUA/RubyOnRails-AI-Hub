class LlmController < ApplicationController
  def simple_suggest_form
  end

  def simple_suggest_generate
    @response = LC_LLM_HUGGING_FACE.complete(prompt: params[:prompt])
  end
end
