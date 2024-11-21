export CUDA_VISIBLE_DEVICES=4,5
export TOOLBENCH_KEY=""
export OUTPUT_DIR="data/answer/toolllama_dfs"
export PYTHONPATH=./
export RAPIDAPI_KEY=""

mkdir $OUTPUT_DIR
python toolbench/inference/qa_pipeline.py \
    --tool_root_dir data/toolenv/tools/ \
    --backbone_model toolllama \
    --model_path ToolBench/ToolLLaMA-2-7b-v2 \
    --max_observation_length 1024 \
    --observ_compress_method truncate \
    --method DFS_woFilter_w2 \
    --input_query_file data/test_instruction/G1_instruction.json \
    --output_answer_file $OUTPUT_DIR \
    --rapidapi_key $RAPIDAPI_KEY \
    --use_rapidapi_key
