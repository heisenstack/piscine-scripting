cat > show-info.sh << 'EOF'
cat -e << INNER
The current directory is: $PWD
The default paths are: $PATH
The current user is: $USERNAME
INNER
EOF