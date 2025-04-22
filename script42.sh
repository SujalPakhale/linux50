#!/bin/bash
# Monitor File Changes
inotifywait -m -r -e modify,create,delete /path/to/watch
