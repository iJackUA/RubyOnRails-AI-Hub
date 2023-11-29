class HuggingFaceLLM < Langchain::LLM::HuggingFace
  alias original_initialize initialize
  def initialize(api_key:, default_options: {})
    original_initialize(api_key:)
    @defaults = DEFAULTS.merge(default_options)
  end

  def embed(text:)
    response = client.embedding(
      input: text,
      model: @defaults[:embeddings_model_name]
    )
    Langchain::LLM::HuggingFaceResponse.new(response, model: @defaults[:embeddings_model_name])
  end

  def complete(prompt:, **_params)
    response = client.text_generation(
      input: prompt,
      model: @defaults[:text_generation_model]
    )
    Langchain::LLM::HuggingFaceResponse.new(response, model: @defaults[:text_generation_model])
  end
end

LC_LLM_HUGGING_FACE = HuggingFaceLLM.new(
  api_key: ENV['HUGGINGFACE_API_TOKEN'],
  default_options: {
    embeddings_model_name: 'sentence-transformers/all-MiniLM-L6-v2',
    text_generation_model: 'tiiuae/falcon-7b-instruct'
  }
)
