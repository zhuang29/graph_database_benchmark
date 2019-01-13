#RAW_DATA_ROOT_FOLDER destination to store converted raw data
export RAW_DATA_ROOT_FOLDER=/home/zhiyi/raw/snb/tigergraph/social_network-1-test
export POSTFIX=_0_0.csv

gsql -g ldbc 'run loading job load_ldbc_edge using 
person_file="'${RAW_DATA_ROOT_FOLDER}'/person'${POSTFIX}'", 
person_mail_file="'${RAW_DATA_ROOT_FOLDER}'/person_email_emailaddress'${POSTFIX}'", 
person_speak_file="'${RAW_DATA_ROOT_FOLDER}'/person_speaks_language'${POSTFIX}'", 
post_file="'${RAW_DATA_ROOT_FOLDER}'/post'${POSTFIX}'", 
tag_file="'${RAW_DATA_ROOT_FOLDER}'/tag'${POSTFIX}'", 
city_file="'${RAW_DATA_ROOT_FOLDER}'/city.csv", 
country_file="'${RAW_DATA_ROOT_FOLDER}'/country.csv", 
continent_file="'${RAW_DATA_ROOT_FOLDER}'/continent.csv", 
comments_file="'${RAW_DATA_ROOT_FOLDER}'/comments'${POSTFIX}'", 
forum_file="'${RAW_DATA_ROOT_FOLDER}'/forum'${POSTFIX}'", 
organisation_file="'${RAW_DATA_ROOT_FOLDER}'/organisation'${POSTFIX}'", 
tagclass_file="'${RAW_DATA_ROOT_FOLDER}'/tagclass'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_knows_person using 
person_knows_person_file="'${RAW_DATA_ROOT_FOLDER}'/person_knows_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_replyOf_post using
comments_replyOf_post_file="'${RAW_DATA_ROOT_FOLDER}'/comments_replyOf_post'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_replyOf_comments using
comments_replyOf_comments_file="'${RAW_DATA_ROOT_FOLDER}'/comments_replyOf_comments'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_post_hasCreator_person using
post_hasCreator_person_file="'${RAW_DATA_ROOT_FOLDER}'/post_hasCreator_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_post_hasTag_tag using
post_hasTag_tag_file="'${RAW_DATA_ROOT_FOLDER}'/post_hasTag_tag'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_hasCreator_person using
comments_hasCreator_person_file="'${RAW_DATA_ROOT_FOLDER}'/comments_hasCreator_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_post_isLocatedIn_country using
post_isLocatedIn_place_file="'${RAW_DATA_ROOT_FOLDER}'/post_isLocatedIn_place'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_hasTag_tag using
comments_hasTag_tag_file="'${RAW_DATA_ROOT_FOLDER}'/comments_hasTag_tag'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_comments_isLocatedIn_country using
comments_isLocatedIn_place_file="'${RAW_DATA_ROOT_FOLDER}'/comments_isLocatedIn_place'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_forum_containerOf_post using
forum_containerOf_post_file="'${RAW_DATA_ROOT_FOLDER}'/forum_containerOf_post'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_forum_hasMember_person using
forum_hasMember_person_file="'${RAW_DATA_ROOT_FOLDER}'/forum_hasMember_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_forum_hasModerator_person using
forum_hasModerator_person_file="'${RAW_DATA_ROOT_FOLDER}'/forum_hasModerator_person'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_forum_hasTag_tag using
forum_hasTag_tag_file="'${RAW_DATA_ROOT_FOLDER}'/forum_hasTag_tag'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_university_isLocatedIn_city using
university_isLocatedIn_city_file="'${RAW_DATA_ROOT_FOLDER}'/university_isLocatedIn_city.csv"'

gsql -g ldbc 'run loading job load_ldbc_company_isLocatedIn_country using
company_isLocatedIn_country_file="'${RAW_DATA_ROOT_FOLDER}'/company_isLocatedIn_country.csv"'

gsql -g ldbc 'run loading job load_ldbc_person_hasInterest_tag using
person_hasInterest_tag_file="'${RAW_DATA_ROOT_FOLDER}'/person_hasInterest_tag'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_isLocatedIn_city using
person_isLocatedIn_place_file="'${RAW_DATA_ROOT_FOLDER}'/person_isLocatedIn_place'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_likes_comments using
person_likes_comments_file="'${RAW_DATA_ROOT_FOLDER}'/person_likes_comments'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_likes_post using
person_likes_post_file="'${RAW_DATA_ROOT_FOLDER}'/person_likes_post'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_studyAt_university using
person_studyAt_organisation_file="'${RAW_DATA_ROOT_FOLDER}'/person_studyAt_organisation'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_person_workAt_company using
person_workAt_organisation_file="'${RAW_DATA_ROOT_FOLDER}'/person_workAt_organisation'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_city_isPartOf_country using
city_isPartOf_country_file="'${RAW_DATA_ROOT_FOLDER}'/city_isPartOf_country.csv"'

gsql -g ldbc 'run loading job load_ldbc_country_isPartOf_continent using
country_isPartOf_continent_file="'${RAW_DATA_ROOT_FOLDER}'/country_isPartOf_continent'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_tag_hasType_tagclass using
tag_hasType_tagclass_file="'${RAW_DATA_ROOT_FOLDER}'/tag_hasType_tagclass'${POSTFIX}'"'

gsql -g ldbc 'run loading job load_ldbc_tagclass_isSubclassOf_tagclass using
tagclass_isSubclassOf_tagclass_file="'${RAW_DATA_ROOT_FOLDER}'/tagclass_isSubclassOf_tagclass'${POSTFIX}'"' 
