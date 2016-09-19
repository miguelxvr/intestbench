# Configuration File:
# Please, edit the following 'xx..' after the variables description

# Variables of host1, where the DMON and APPLICATION will run

base_host_ip				10.0.3.214
base_host_domain_name 			Bench1

test_name				TESTNAME
base_host_workload 			WORKLOAD

base_host_minimum_memory_in_bytes 	26843545600 
base_host_minimum_memory_in_percent 	40
base_host_dmon_path 			/home/ubuntu/dmon

# Variables of host2, where the STRESS will run

stress_host_ip 				10.0.3.225
stress_host_domain_name 		Bench2
stress_host_dmon_path 			/home/ubuntu/dmon
stress_host_prime96_path		/home/ubuntu/prime95/mprime

# General variables

host_username                           ubuntu
total_memory_in_bytes 			67543678976
log_cmd 				tail -1 /home/ubuntu/hadoop2-install-scripts/HiBench/report/hibench.report
#log_cmd 				tail -1 /home/ubuntu/hadoop2-install-scripts/HiBench-yarn/hibench.report
#log_cmd				grep -A33 "<br><h3>Overall statistics</h3><p>" `ls -trd /home/ubuntu/RUBiS/bench/* | tail -1`/stat_client0.html | grep "Average throughput" | sed 's/^.*[^>][^1-9] //g' | sed 's/^.[^0-9]*\(.*\) .*/\1/g'
