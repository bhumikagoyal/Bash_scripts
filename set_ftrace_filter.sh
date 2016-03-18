#!/bin/bash
echo 1 > /proc/sys/kernel/ftrace_enabled
echo function > /sys/kernel/debug/tracing/current_tracer
echo "*lock*" > /sys/kernel/debug/tracing/set_ftrace_filter
echo 1 > /sys/kernel/debug/tracing/tracing_on
cat /sys/kernel/debug/tracing/trace | head -20
echo 0 > /sys/kernel/debug/tracing/tracing_on
exec "$@"
