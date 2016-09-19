#!/bin/bash

HOME_HADOOP=/home/ubuntu/hadoop2-install-scripts/

HOME_HADOOP_BIN=PREPARE_BIN

function pre_script
{
	remote_exec $base_host_ip "pushd $HOME_HADOOP; bash deploy-hadoop2.sh -u"
	remote_exec $base_host_ip "pushd $HOME_HADOOP; bash deploy-hadoop2.sh -d"
	remote_exec $base_host_ip "pushd $HOME_HADOOP; /tmp/hadoop-2.7.2/bin/hdfs dfsadmin -safemode leave"
	remote_exec $base_host_ip "source /home/ubuntu/hadoop2-install-scripts/hadoop.env; pushd $HOME_HADOOP_BIN; bash prepare.sh"

	echo "Pre script completed."
}
