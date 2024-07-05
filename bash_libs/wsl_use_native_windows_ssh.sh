# When running Linux in WSL, it is possible to ssh using the Windows OpenSSH
# tools, or the OpenSSH included with the Linux distro. The latter is the
# default.
#
# However, the ssh-agent in the Linux distro cannot "remember" keys that have
# been added to it across restarts, which means that you have to type your
# SSH key passphrase every time you want restart WSL.
#
# Instead, you can add all of your SSH keys to the *Windows* SSH agent, and then
# use the Windows `ssh.exe` command from within Linux. The Windows SSH agent
# remembers keys added to it (similar to a standalone Linuk installation),
# which is more convenient.

# Alias `ssh` to the Windows OpenSSH installation.
alias ssh='ssh.exe'
# Add an alias to the Linux OpenSSH installation, if it's needed.
alias sshw='/usr/bin/ssh'

# Use `ssh.exe` in Git by default.
# If needed, this can be overridden by setting the `GIT_SSH_COMMAND`
# environment variable.
git config --global core.sshcommand "ssh.exe"