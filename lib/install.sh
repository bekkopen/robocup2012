#!/bin/bash

currentDir="$(cd $(dirname "$0"); pwd)"
if [ ! -d "$currentDir/leJOS_NXJ" ]; then
  echo ""
  echo "Untaring leJOS"
  echo "--------------"
  curl -L http://downloads.sourceforge.net/project/lejos/lejos-NXJ/0.9.1beta/leJOS_NXJ_0.9.1beta-2.tar.gz | tar xvz  
  mv leJOS_NXJ_0.9.1beta-2 leJOS_NXJ
fi

echo ""
echo "To complete the installation you must export NXJ_HOME, LEJOS_NXT_JAVA_HOME and PATH"
echo "------------------------------------------------"
echo "---------Example--------------------------------"
echo "export NXJ_HOME='$currentDir/leJOS_NXJ'"
echo "export LEJOS_NXT_JAVA_HOME='/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home'"
echo 'export PATH="$NXJ_HOME/bin:$PATH"'
