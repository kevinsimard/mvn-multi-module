version:
	@echo ${tag} | egrep -q "\d+.\d+.\d+" || (echo "Invalid Version Tag" && exit 1)
	mvn versions:set -DnewVersion=${tag} -DgenerateBackupPoms=false
