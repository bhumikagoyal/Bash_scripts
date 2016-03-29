#!/bin/bash
sudo trace-cmd record -e kmem:mm_page_pcpu_drain
kernelshark
exec "$@"
