if [ -d /usr/java/default ]; then
    export JAVA_HOME=/usr/java/default
elif [ -d /usr/lib/jvm/java-6-sun ]; then
    export JAVA_HOME=/usr/lib/jvm/java-6-sun
elif [ -d /usr/lib/jvm/java-7-oracle ]; then
    export JAVA_HOME=/usr/lib/jvm/java-7-oracle
else
    # Test if an interactive terminal (from: http://tldp.org/LDP/abs/html/intandnonint.html)
    [[ -t 0 || -p /dev/stdin ]] && echo 'Unable to find Sun JAVA!' >&2
fi

if [ "x$JAVA_HOME" != "x" ]; then
    export JRE_HOME=$JAVA_HOME/jre
    export CLASSPATH=$CLASSPATH:$JAVA_HOME/lib
    export PATH=$JAVA_HOME/bin:$PATH
fi
