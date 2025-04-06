#!/bin/bash

echo "Temporary files:"
find /tmp -name "*.tmp"
find /tmp -name "*.tmp" -delete
echo "After deletion:"
ls /tmp

