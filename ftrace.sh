cat /sys/kernel/debug/tracing/set_ftrace_filter
cat /sys/kernel/debug/tracing/current_tracer
echo 1 > /sys/kernel/debug/tracing/tracing_on
echo '*sleep*' > /sys/kernel/debug/tracing/set_ftrace_filter
echo function > /sys/kernel/debug/tracing/current_tracer
sleep 10
cat /sys/kernel/debug/tracing/trace > /tmp/out.trace01.txt
echo nop > /sys/kernel/debug/tracing/current_tracer
echo > /sys/kernel/debug/tracing/set_ftrace_filter
