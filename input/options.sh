#!/bin/bash

############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}


############################################################
# Defining variable that are affected by the options       #
############################################################

unset Name

Name="World"

############################################################
############################################################
# Main program                                             #
############################################################
############################################################
############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts "hn:" option; do
   case $option in
      (h) # display Help
         Help
         exit;;
      (n) Name=${OPTARG};;
      (\?) # invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done

echo "Hello $Name"