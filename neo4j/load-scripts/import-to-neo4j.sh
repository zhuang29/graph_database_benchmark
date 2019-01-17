#!/bin/bash
# . path.sh

time $NEO4J_HOME/bin/neo4j-admin import --database=$NEO4J_DB_NAME \
  --id-type=INTEGER \
  --nodes:Message:Comment "${NEO4J_DATA_DIR}/comment_header.csv,${NEO4J_DATA_DIR}/comment_[0-9]+.*" \
  --nodes:Forum "${NEO4J_DATA_DIR}/forum_header.csv,${NEO4J_DATA_DIR}/forum_[0-9]+.*" \
  --nodes:Organisation "${NEO4J_DATA_DIR}/organisation_header.csv,${NEO4J_DATA_DIR}/organisation_[0-9]+.*" \
  --nodes:Person "${NEO4J_DATA_DIR}/person_header.csv,${NEO4J_DATA_DIR}/person_[0-9]+.*" \
  --nodes:Place "${NEO4J_DATA_DIR}/place_header.csv,${NEO4J_DATA_DIR}/place_[0-9]+.*" \
  --nodes:Message:Post "${NEO4J_DATA_DIR}/post_header.csv,${NEO4J_DATA_DIR}/post_[0-9]+.*" \
  --nodes:TagClass "${NEO4J_DATA_DIR}/tagclass_header.csv,${NEO4J_DATA_DIR}/tagclass_[0-9]+.*" \
  --nodes:Tag "${NEO4J_DATA_DIR}/tag_header.csv,${NEO4J_DATA_DIR}/tag_[0-9]+.*" \
  --relationships:HAS_CREATOR "${NEO4J_DATA_DIR}/comment_hasCreator_person_header.csv,${NEO4J_DATA_DIR}/comment_hasCreator_person_[0-9]+.*" \
  --relationships:IS_LOCATED_IN "${NEO4J_DATA_DIR}/comment_isLocatedIn_place_header.csv,${NEO4J_DATA_DIR}/comment_isLocatedIn_place_[0-9]+.*" \
  --relationships:REPLY_OF "${NEO4J_DATA_DIR}/comment_replyOf_comment_header.csv,${NEO4J_DATA_DIR}/comment_replyOf_comment_[0-9]+.*" \
  --relationships:REPLY_OF "${NEO4J_DATA_DIR}/comment_replyOf_post_header.csv,${NEO4J_DATA_DIR}/comment_replyOf_post_[0-9]+.*" \
  --relationships:CONTAINER_OF "${NEO4J_DATA_DIR}/forum_containerOf_post_header.csv,${NEO4J_DATA_DIR}/forum_containerOf_post_[0-9]+.*" \
  --relationships:HAS_MEMBER "${NEO4J_DATA_DIR}/forum_hasMember_person_header.csv,${NEO4J_DATA_DIR}/forum_hasMember_person_[0-9]+.*" \
  --relationships:HAS_MODERATOR "${NEO4J_DATA_DIR}/forum_hasModerator_person_header.csv,${NEO4J_DATA_DIR}/forum_hasModerator_person_[0-9]+.*" \
  --relationships:HAS_TAG "${NEO4J_DATA_DIR}/forum_hasTag_tag_header.csv,${NEO4J_DATA_DIR}/forum_hasTag_tag_[0-9]+.*" \
  --relationships:HAS_INTEREST "${NEO4J_DATA_DIR}/person_hasInterest_tag_header.csv,${NEO4J_DATA_DIR}/person_hasInterest_tag_[0-9]+.*" \
  --relationships:IS_LOCATED_IN "${NEO4J_DATA_DIR}/person_isLocatedIn_place_header.csv,${NEO4J_DATA_DIR}/person_isLocatedIn_place_[0-9]+.*" \
  --relationships:KNOWS "${NEO4J_DATA_DIR}/person_knows_person_header.csv,${NEO4J_DATA_DIR}/person_knows_person_[0-9]+.*" \
  --relationships:LIKES "${NEO4J_DATA_DIR}/person_likes_comment_header.csv,${NEO4J_DATA_DIR}/person_likes_comment_[0-9]+.*" \
  --relationships:LIKES "${NEO4J_DATA_DIR}/person_likes_post_header.csv,${NEO4J_DATA_DIR}/person_likes_post_[0-9]+.*" \
  --relationships:IS_PART_OF "${NEO4J_DATA_DIR}/place_isPartOf_place_header.csv,${NEO4J_DATA_DIR}/place_isPartOf_place_[0-9]+.*" \
  --relationships:HAS_CREATOR "${NEO4J_DATA_DIR}/post_hasCreator_person_header.csv,${NEO4J_DATA_DIR}/post_hasCreator_person_[0-9]+.*" \
  --relationships:HAS_TAG "${NEO4J_DATA_DIR}/comment_hasTag_tag_header.csv,${NEO4J_DATA_DIR}/comment_hasTag_tag_[0-9]+.*" \
  --relationships:HAS_TAG "${NEO4J_DATA_DIR}/post_hasTag_tag_header.csv,${NEO4J_DATA_DIR}/post_hasTag_tag_[0-9]+.*" \
  --relationships:IS_LOCATED_IN "${NEO4J_DATA_DIR}/post_isLocatedIn_place_header.csv,${NEO4J_DATA_DIR}/post_isLocatedIn_place_[0-9]+.*" \
  --relationships:IS_SUBCLASS_OF "${NEO4J_DATA_DIR}/tagclass_isSubclassOf_tagclass_header.csv,${NEO4J_DATA_DIR}/tagclass_isSubclassOf_tagclass_[0-9]+.*" \
  --relationships:HAS_TYPE "${NEO4J_DATA_DIR}/tag_hasType_tagclass_header.csv,${NEO4J_DATA_DIR}/tag_hasType_tagclass_[0-9]+.*" \
  --relationships:STUDY_AT "${NEO4J_DATA_DIR}/person_studyAt_organisation_header.csv,${NEO4J_DATA_DIR}/person_studyAt_organisation_[0-9]+.*" \
  --relationships:WORK_AT "${NEO4J_DATA_DIR}/person_workAt_organisation_header.csv,${NEO4J_DATA_DIR}/person_workAt_organisation_[0-9]+.*" \
  --relationships:IS_LOCATED_IN "${NEO4J_DATA_DIR}/organisation_isLocatedIn_place_header.csv,${NEO4J_DATA_DIR}/organisation_isLocatedIn_place_[0-9]+.*" \
  --delimiter '|'
