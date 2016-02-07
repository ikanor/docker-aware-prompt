find_docker_machine() {
  if [[ "$DOCKER_MACHINE_NAME" != "" ]]; then
    prompt_docker_machine="┊🐳 ┊"$DOCKER_MACHINE_NAME"┊"
  else
    prompt_docker_machine=""
  fi
}

PROMPT_COMMAND="find_docker_machine; $PROMPT_COMMAND"
