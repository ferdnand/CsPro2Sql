#!/bin/bash

java -Xmx1048m -Xms512m -cp 'lib/CsPro2Sql.jar:lib/commons-cli-1.3.1.jar:lib/mysql-connector-java-5.1.40-bin.jar' cspro2sql.Main $@

