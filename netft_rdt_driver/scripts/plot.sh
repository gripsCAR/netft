#!/bin/sh
TOPIC="netft/data/wrench"

rqt_plot -b 10 \
    ${TOPIC}/force/x,${TOPIC}/force/y,${TOPIC}/force/z  \
    ${TOPIC}/torque/x,${TOPIC}/torque/y,${TOPIC}/torque/z
