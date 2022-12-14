#!/bin/bash/env sh

Help()
{
  # Display Help
  echo "Add your images in images directory at the root of the project directory"
  echo
  echo "Syntax: genereSite.sh [target_dir]"
  echo "options:"
  echo "-h     Print this Help."
  echo
  echo "To add comment use postComment.sh script"
  echo
}

CommentHelp()
{
  echo "Post your message"
  echo
  echo "Syntax: postComment.sh [username] [comment]"
  echo "options:"
  echo "-h     Print this Help."
  echo
}