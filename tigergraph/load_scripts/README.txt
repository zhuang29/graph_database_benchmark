convert_data.sh
#1. convert city/country/continent to City/Country/Continent
	convert company/university to Company/University
#2. convert all data of datetime type to integers


split_data.sh
split data:
#split vertexes:
#place to city/country/continent
#organisation to university/company

#split edges:
#place_isPartOf_place to city_isPartOf_country/country_isPartOf_continent 
#organisation_isLocatedIn_place to university_isLocatedIn_city/company_isLocatedIn_country
#organisation_isLocatedIn_place to university_isLocatedIn_city/company_isLocatedIn_country


setup_schema.gsql
#setup schema


setup_schema_split.gsql
#setup schema with splited data


load_data.sh
#load converted data into TigerGraph


load_data_split.sh
#load converted and splited data into Tigergraph


one_step_load.sh
#execute convert_date.sh,  setup_schema.gsql, load_data.sh one by one


one_step_load_split.sh
#execute convert_data.sh, split_data.sh, setup_schema_split.gsql, load_data_splited one by one
