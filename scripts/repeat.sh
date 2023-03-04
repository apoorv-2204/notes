# #!/bin/bash

# # Set the number of times to run the command
# n=100

# # Set the command to run
# command="mix test test/archethic_web/graphql_schema_test.exs"

# # Initialize success and failure counters
# success=0
# failure=0

# # Loop n times and run the command each time
# for i in $(seq 1 $n); do
#   if eval "$command"; then
#     success=$((success+1))
#   else
#     failure=$((failure+1))
#   fi
# done

# # Report the results
# echo "Results for command '$command':"
# echo "  Successes:  

#!/bin/bash

# Initialize counters for successes and failures
successes=0
failures=0

# Define the command to run
command_to_run="mix test test/archethic_web/graphql_schema_test.exs"

# Define the number of times to run the command
n=200

# Loop over the number of runs
for ((i=1; i<=$n; i++))
do
  # Run the command
  $command_to_run
  
  # Check the exit code of the command
  if [ $? -eq 0 ]; then
    # The command succeeded
    ((successes++))
  else
    # The command failed
    ((failures++))
  fi
done

# Report the results
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Ran the command $n times"
echo "Successes: $successes"
echo "Failures: $failures"