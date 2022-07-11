@echo off

rem You may need to customize memory config below to optimize for your environment.
rem To display time when the application is stopped for GC:
rem -XX:+PrintGCTimeStamps -XX:+PrintGCApplicationStoppedTime
set JAVA_OPTS=-Xmx512m -Xms256m -XX:MaxMetaspaceSize=384m -XX:+HeapDumpOnOutOfMemoryError -XX:+AggressiveOpts -XX:+OptimizeStringConcat -XX:+UseFastAccessorMethods -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+CMSClassUnloadingEnabled -XX:SurvivorRatio=8 -XX:MaxTenuringThreshold=1 -XX:CMSInitiatingOccupancyFraction=75 -XX:+UseCMSInitiatingOccupancyOnly -Djava.awt.headless=true -server -Dxitrum.mode=production

set ROOT_DIR=%~dp0..
cd "%$ROOT_DIR%"

rem Include ROOT_DIR to find this pid easier later, when
rem starting multiple processes from different directories
set CLASS_PATH="%ROOT_DIR%\lib\*;config"

java %JAVA_OPTS% -cp %CLASS_PATH% %*
