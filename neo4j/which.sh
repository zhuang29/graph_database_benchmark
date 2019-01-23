echo NEO4J_DB
grep -E -o '.{0,10}neostore.counts.db.b' $NEO4J_DB_DIR/logs/debug.log
