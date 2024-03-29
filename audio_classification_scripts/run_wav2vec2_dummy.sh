#!/usr/bin/env bash

python run_audio_classification.py \
    --model_name_or_path "hf-internal-testing/tiny-random-wav2vec2" \
    --train_dataset_name "facebook/voxpopuli" \
    --train_dataset_config_name "en_accented" \
    --train_split_name "test" \
    --train_label_column_name "accent" \
    --eval_dataset_name "facebook/voxpopuli" \
    --eval_dataset_config_name "en_accented" \
    --eval_split_name "test" \
    --eval_label_column_name "accent" \
    --trust_remote_code \
    --output_dir "./" \
    --do_train \
    --do_eval \
    --max_train_samples 100 \
    --max_eval_samples 100 \
    --overwrite_output_dir \
    --remove_unused_columns False \
    --fp16 \
    --learning_rate 1e-4 \
    --min_length_seconds 5 \
    --max_length_seconds 10 \
    --attention_mask False \
    --warmup_ratio 0.1 \
    --num_train_epochs 5 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --dataloader_num_workers 0 \
    --logging_strategy "steps" \
    --logging_steps 10 \
    --evaluation_strategy "epoch" \
    --save_strategy "epoch" \
    --load_best_model_at_end True \
    --metric_for_best_model "accuracy" \
    --save_total_limit 3 \
    --seed 0
