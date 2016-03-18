#!/bin/bash
echo 1 > /proc/sys/kernel/ftrace_enabled
echo 1 > /sys/kernel/debug/tracing/tracing_on
echo function_graph > /sys/kernel/debug/tracing/current_tracer
echo 0 > /sys/kernel/debug/tracing/tracing_on
cat /sys/kernel/debug/tracing/trace | head -20
exec "$@"
