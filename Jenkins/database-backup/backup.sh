#!/bin/bash
set -e

DATE=$(date +%F)
FILE_NAME="db_${DATE}.sql"


# Run dump on remote database server
ssh "${USER}@${SERVER}" "
export MYSQL_PWD=${DB_PASS} mysqldump -u${DB_USER} ${DB_NAME} > ${FILE_NAME}
unset MYSQL_PWD
"

# Copy to remote backup server
scp "${USER}@${SERVER}:${FILE_NAME}" "${REMOTE_USER}@${REMOTE_HOST}:${BACKUP_PATH}"

# Remove local copy after successful transfer
ssh "${USER}@${SERVER}" "rm -f ${FILE_NAME}"
