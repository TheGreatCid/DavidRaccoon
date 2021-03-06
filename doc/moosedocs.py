#!/usr/bin/env python
#* This file is part of the RACCOON application
#* being developed at Dolbow lab at Duke University
#* http://dolbow.pratt.duke.edu

import sys
import os

# Locate MOOSE directory
MOOSE_DIR = os.getenv('MOOSE_DIR', os.path.abspath(os.path.join(os.path.dirname(__name__), '..', 'moose')))
if not os.path.exists(MOOSE_DIR):
    MOOSE_DIR = os.path.abspath(os.path.join(os.path.dirname(__name__), '..', '..', 'moose'))
if not os.path.exists(MOOSE_DIR):
    raise Exception('Failed to locate MOOSE, specify the MOOSE_DIR environment variable.')
os.environ['MOOSE_DIR'] = MOOSE_DIR

# Append MOOSE python directory
MOOSE_PYTHON_DIR = os.path.join(MOOSE_DIR, 'python')
if MOOSE_PYTHON_DIR not in sys.path:
    sys.path.append(MOOSE_PYTHON_DIR)

from MooseDocs import main
if __name__ == '__main__':
    sys.exit(main.run())
