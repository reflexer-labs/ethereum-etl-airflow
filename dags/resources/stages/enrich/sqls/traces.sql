SELECT
    traces.transaction_hash,
    traces.transaction_index,
    traces.from_address,
    traces.to_address,
    traces.value,
    traces.input,
    traces.output,
    traces.trace_type,
    traces.call_type,
    traces.reward_type,
    traces.gas,
    traces.gas_used,
    traces.subtraces,
    traces.trace_address,
    traces.error,
    traces.status,
    TIMESTAMP_SECONDS(blocks.timestamp) AS block_timestamp,
    blocks.number AS block_number,
    blocks.hash AS block_hash
FROM {{DATASET_NAME_RAW}}.blocks AS blocks
    JOIN {{DATASET_NAME_RAW}}.traces AS traces ON blocks.number = traces.block_number


