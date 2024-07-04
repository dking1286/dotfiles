# Start the ssh-agent if it's not already running, and save its configuration to a file so that other
# shells can find it, and not start their own copy of ssh-agent.
ssh_pid=$(pidof ssh-agent)

if [ "$ssh_pid" = "" ]; then
        ssh_env="$(ssh-agent -s)"
        echo "$ssh_env" | head -n 2 | tee ~/.ssh_agent_env > /dev/null
fi

if [ -f ~/.ssh_agent_env ]; then
        eval "$(cat ~/.ssh_agent_env)"
fi