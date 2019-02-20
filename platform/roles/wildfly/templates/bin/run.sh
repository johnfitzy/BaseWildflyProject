#!/bin/sh
JBOSS_HOME=/opt/wildfly
JBOSS_INST=/opt/wildfly-{{ instance }}

RUN_CONF=${JBOSS_INST}/bin/standalone.conf
export RUN_CONF

${JBOSS_HOME}/bin/standalone.sh -Djboss.server.base.dir=${JBOSS_INST} -bmanagement={{ bind_address }} $@
