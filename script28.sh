#!/bin/bash
# Check for Broken Symlinks
find / -type l -xtype l -print 2>/dev/null
