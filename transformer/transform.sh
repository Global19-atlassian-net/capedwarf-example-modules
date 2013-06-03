#!/bin/bash

function cd_transformer {
	transformer_cp=${transformer_cp}:${cd_modules}org/jboss/maven/plugins/transformer/main/maven-transformer-plugin-1.0.0.Beta4.jar
	transformer_cp=${transformer_cp}:${cd_modules}org/javassist/main/javassist-3.15.0-GA.jar
	transformer_cp=${transformer_cp}:${cd_modules}org/hibernate/search/main/hibernate-search-engine-4.3.0.Beta1.jar
	transformer_cp=${transformer_cp}:${cd_modules}com/google/appengine/main/appengine-api-1.0-sdk-1.8.0.jar
	transformer_cp=${transformer_cp}:${cd_modules}org/jboss/capedwarf/main/*
	
	/usr/bin/java -classpath ${transformer_cp} \
	org.jboss.capedwarf.bytecode.CapedwarfTransformerMojo \
	${cd_modules}com/google/appengine/main/appengine-api-1.0-sdk-1.8.0.jar
}
