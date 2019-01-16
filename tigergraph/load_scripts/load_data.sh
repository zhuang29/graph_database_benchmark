#RAW_DATA_DIR destination to store converted raw data
#export RAW_DATA_DIR=/home/zhiyi/raw/snb/tigergraph/social_network-1-test
#export POSTFIX=_0_0.csv

gsql -g ldbc 'run loading job load_ldbc_edge using 
person_file="'${RAW_DATA_DIR}'/person'${POSTFIX}'", 
post_file="'${RAW_DATA_DIR}'/post'${POSTFIX}'", 
tag_file="'${RAW_DATA_DIR}'/tag'${POSTFIX}'", 
place_file="'${RAW_DATA_DIR}'/place'${POSTFIX}'", 
comments_file="'${RAW_DATA_DIR}'/comments'${POSTFIX}'", 
forum_file="'${RAW_DATA_DIR}'/forum'${POSTFIX}'", 
organisation_file="'${RAW_DATA_DIR}'/organisation'${POSTFIX}'", 
tagclass_file="'${RAW_DATA_DIR}'/tagclass'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_knows_person using 
person_knows_person_file="'${RAW_DATA_DIR}'/person_knows_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_replyOf_post using
comments_replyOf_post_file="'${RAW_DATA_DIR}'/comments_replyOf_post'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_replyOf_comments using
comments_replyOf_comments_file="'${RAW_DATA_DIR}'/comments_replyOf_comments'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_post_hasCreator_person using
post_hasCreator_person_file="'${RAW_DATA_DIR}'/post_hasCreator_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_post_hasTag_tag using
post_hasTag_tag_file="'${RAW_DATA_DIR}'/post_hasTag_tag'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_hasCreator_person using
comments_hasCreator_person_file="'${RAW_DATA_DIR}'/comments_hasCreator_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_post_isLocatedIn_place using
post_isLocatedIn_place_file="'${RAW_DATA_DIR}'/post_isLocatedIn_place'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_hasTag_tag using
comments_hasTag_tag_file="'${RAW_DATA_DIR}'/comments_hasTag_tag'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_isLocatedIn_place using
comments_isLocatedIn_place_file="'${RAW_DATA_DIR}'/comments_isLocatedIn_place'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_forum_containerOf_post using
forum_containerOf_post_file="'${RAW_DATA_DIR}'/forum_containerOf_post'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_forum_hasMember_person using
forum_hasMember_person_file="'${RAW_DATA_DIR}'/forum_hasMember_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_forum_hasModerator_person using
forum_hasModerator_person_file="'${RAW_DATA_DIR}'/forum_hasModerator_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_forum_hasTag_tag using
forum_hasTag_tag_file="'${RAW_DATA_DIR}'/forum_hasTag_tag'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_organisation_isLocatedIn_place using
organisation_isLocatedIn_place_file="'${RAW_DATA_DIR}'/organisation_isLocatedIn_place'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_hasInterest_tag using
person_hasInterest_tag_file="'${RAW_DATA_DIR}'/person_hasInterest_tag'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_isLocatedIn_place using
person_isLocatedIn_place_file="'${RAW_DATA_DIR}'/person_isLocatedIn_place'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_likes_comments using
person_likes_comments_file="'${RAW_DATA_DIR}'/person_likes_comments'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_likes_post using
person_likes_post_file="'${RAW_DATA_DIR}'/person_likes_post'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_studyAt_organisation using
person_studyAt_organisation_file="'${RAW_DATA_DIR}'/person_studyAt_organisation'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_workAt_organisation using
person_workAt_organisation_file="'${RAW_DATA_DIR}'/person_workAt_organisation'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_place_isPartOf_place using
place_isPartOf_place_file="'${RAW_DATA_DIR}'/place_isPartOf_place'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_tag_hasType_tagclass using
tag_hasType_tagclass_file="'${RAW_DATA_DIR}'/tag_hasType_tagclass'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_tagclass_isSubclassOf_tagclass using
tagclass_isSubclassOf_tagclass_file="'${RAW_DATA_DIR}'/tagclass_isSubclassOf_tagclass'${POSTFIX}'"' 
