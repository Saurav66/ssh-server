#!/bin/bash

# Execute the command
ssh -o StrictHostKeyChecking=yes "${USER}@${HOST}" -p ${PORT} ${COMMAND}
