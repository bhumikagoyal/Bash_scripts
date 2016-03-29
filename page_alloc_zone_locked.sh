#!/bin/bash
sudo trace-cmd record -e kmem:mm_page_alloc_zone_locked
kernelshark
exec "$@"
