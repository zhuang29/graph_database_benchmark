# RAW_DATA_ROOT_FOLDER destination to store converted raw data

export RAW_DATA_ROOT_FOLDER=/home/zhiyi/raw/snb/tigergraph/social_network-1-test
export POSTFIX=_0_0.csv

gsql -g ldbc "run loading job load_ldbc_edge using 
person_file=\"${RAW_DATA_ROOT_FOLDER}/person${POSTFIX}\", 
person_mail_file=\"${RAW_DATA_ROOT_FOLDER}/person_email_emailaddress${POSTFIX}\", 
person_speak_file=\"${RAW_DATA_ROOT_FOLDER}/person_speaks_language${POSTFIX}\", 
post_file=\"${RAW_DATA_ROOT_FOLDER}/post${POSTFIX}\", 
place_file=\"${RAW_DATA_ROOT_FOLDER}/place${POSTFIX}\", 
tag_file=\"${RAW_DATA_ROOT_FOLDER}/tag${POSTFIX}\", 
comments_file=\"${RAW_DATA_ROOT_FOLDER}/comment${POSTFIX}\", 
forum_file=\"${RAW_DATA_ROOT_FOLDER}/forum${POSTFIX}\", 
organisation_file=\"${RAW_DATA_ROOT_FOLDER}/organisation${POSTFIX}\", 
tagclass_file=\"${RAW_DATA_ROOT_FOLDER}/tagclass${POSTFIX}\",

person_knows_person_file=\"${RAW_DATA_ROOT_FOLDER}/person_knows_person${POSTFIX}\", 
comments_replyOf_post_file=\"${RAW_DATA_ROOT_FOLDER}/comment_replyOf_post${POSTFIX}\", 
comments_replyOf_comments_file=\"${RAW_DATA_ROOT_FOLDER}/comment_replyOf_comment${POSTFIX}\", 
post_hasCreator_person_file=\"${RAW_DATA_ROOT_FOLDER}/post_hasCreator_person${POSTFIX}\", 
post_hasTag_tag_file=\"${RAW_DATA_ROOT_FOLDER}/post_hasTag_tag${POSTFIX}\", 
comments_hasCreator_person_file=\"${RAW_DATA_ROOT_FOLDER}/comment_hasCreator_person${POSTFIX}\", 
post_isLocatedIn_place_file=\"${RAW_DATA_ROOT_FOLDER}/post_isLocatedIn_place${POSTFIX}\", 
comments_hasTag_tag_file=\"${RAW_DATA_ROOT_FOLDER}/comment_hasTag_tag${POSTFIX}\", 
comment_isLocatedIn_place_file=\"${RAW_DATA_ROOT_FOLDER}/comment_isLocatedIn_place${POSTFIX}\", 
forum_containerOf_post_file=\"${RAW_DATA_ROOT_FOLDER}/forum_containerOf_post${POSTFIX}\", 
forum_hasMember_person_file=\"${RAW_DATA_ROOT_FOLDER}/forum_hasMember_person${POSTFIX}\", 
forum_hasModerator_person_file=\"${RAW_DATA_ROOT_FOLDER}/forum_hasModerator_person${POSTFIX}\", 
forum_hasTag_tag_file=\"${RAW_DATA_ROOT_FOLDER}/forum_hasTag_tag${POSTFIX}\", 
person_hasInterest_tag_file=\"${RAW_DATA_ROOT_FOLDER}/person_hasInterest_tag${POSTFIX}\", 
person_isLocatedIn_place_file=\"${RAW_DATA_ROOT_FOLDER}/person_isLocatedIn_place${POSTFIX}\", 
person_likes_comments_file=\"${RAW_DATA_ROOT_FOLDER}/person_likes_comment${POSTFIX}\", 
person_likes_post_file=\"${RAW_DATA_ROOT_FOLDER}/person_likes_post${POSTFIX}\", 
person_studyAt_organisation_file=\"${RAW_DATA_ROOT_FOLDER}/person_studyAt_organisation${POSTFIX}\", 
person_workAt_organisation_file=\"${RAW_DATA_ROOT_FOLDER}/person_workAt_organisation${POSTFIX}\", 
tag_hasType_tagclass_file=\"${RAW_DATA_ROOT_FOLDER}/tag_hasType_tagclass${POSTFIX}\", 
tagclass_isSubclassOf_tagclass_file=\"${RAW_DATA_ROOT_FOLDER}/tagclass_isSubclassOf_tagclass${POSTFIX}\"" 
