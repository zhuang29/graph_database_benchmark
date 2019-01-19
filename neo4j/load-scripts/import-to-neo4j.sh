#!/bin/bash
# . path.sh

time $NEO4J_HOME/bin/neo4j-admin import --database=$NEO4J_DB_NAME \
  --id-type=INTEGER \
  --nodes:Message:Comment "${NEO4J_DATA_DIR}/comment${NEO4J_DATA_POSTFIX}" \
  --nodes:Forum "${NEO4J_DATA_DIR}/forum${NEO4J_DATA_POSTFIX}" \
  --nodes:Organisation "${NEO4J_DATA_DIR}/organisation${NEO4J_DATA_POSTFIX}" \
  --nodes:Person "${NEO4J_DATA_DIR}/person${NEO4J_DATA_POSTFIX}" \
  --nodes:Place "${NEO4J_DATA_DIR}/place${NEO4J_DATA_POSTFIX}" \
  --nodes:Message:Post "${NEO4J_DATA_DIR}/post${NEO4J_DATA_POSTFIX}" \
  --nodes:TagClass "${NEO4J_DATA_DIR}/tagclass${NEO4J_DATA_POSTFIX}" \
  --nodes:Tag "${NEO4J_DATA_DIR}/tag${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_CREATOR "${NEO4J_DATA_DIR}/comment_hasCreator_person${NEO4J_DATA_POSTFIX}" \
  --relationships:IS_LOCATED_IN "${NEO4J_DATA_DIR}/comment_isLocatedIn_place${NEO4J_DATA_POSTFIX}" \
  --relationships:REPLY_OF "${NEO4J_DATA_DIR}/comment_replyOf_comment${NEO4J_DATA_POSTFIX}" \
  --relationships:REPLY_OF "${NEO4J_DATA_DIR}/comment_replyOf_post${NEO4J_DATA_POSTFIX}" \
  --relationships:CONTAINER_OF "${NEO4J_DATA_DIR}/forum_containerOf_post${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_MEMBER "${NEO4J_DATA_DIR}/forum_hasMember_person${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_MODERATOR "${NEO4J_DATA_DIR}/forum_hasModerator_person${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_TAG "${NEO4J_DATA_DIR}/forum_hasTag_tag${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_INTEREST "${NEO4J_DATA_DIR}/person_hasInterest_tag${NEO4J_DATA_POSTFIX}" \
  --relationships:IS_LOCATED_IN "${NEO4J_DATA_DIR}/person_isLocatedIn_place${NEO4J_DATA_POSTFIX}" \
  --relationships:KNOWS "${NEO4J_DATA_DIR}/person_knows_person${NEO4J_DATA_POSTFIX}" \
  --relationships:LIKES "${NEO4J_DATA_DIR}/person_likes_comment${NEO4J_DATA_POSTFIX}" \
  --relationships:LIKES "${NEO4J_DATA_DIR}/person_likes_post${NEO4J_DATA_POSTFIX}" \
  --relationships:IS_PART_OF "${NEO4J_DATA_DIR}/place_isPartOf_place${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_CREATOR "${NEO4J_DATA_DIR}/post_hasCreator_person${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_TAG "${NEO4J_DATA_DIR}/comment_hasTag_tag${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_TAG "${NEO4J_DATA_DIR}/post_hasTag_tag${NEO4J_DATA_POSTFIX}" \
  --relationships:IS_LOCATED_IN "${NEO4J_DATA_DIR}/post_isLocatedIn_place${NEO4J_DATA_POSTFIX}" \
  --relationships:IS_SUBCLASS_OF "${NEO4J_DATA_DIR}/tagclass_isSubclassOf_tagclass${NEO4J_DATA_POSTFIX}" \
  --relationships:HAS_TYPE "${NEO4J_DATA_DIR}/tag_hasType_tagclass${NEO4J_DATA_POSTFIX}" \
  --relationships:STUDY_AT "${NEO4J_DATA_DIR}/person_studyAt_organisation${NEO4J_DATA_POSTFIX}" \
  --relationships:WORK_AT "${NEO4J_DATA_DIR}/person_workAt_organisation${NEO4J_DATA_POSTFIX}" \
  --relationships:IS_LOCATED_IN "${NEO4J_DATA_DIR}/organisation_isLocatedIn_place${NEO4J_DATA_POSTFIX}" \
  --delimiter '|'
