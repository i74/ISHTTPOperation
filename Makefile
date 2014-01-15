test:
	xcodebuild clean test \
		-sdk iphonesimulator \
		-scheme ISHTTPOperation \
		-configuration Debug \
		-destination "name=iPhone Retina (3.5-inch),OS=7.0" \
		GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
		GCC_GENERATE_TEST_COVERAGE_FILES=YES

coveralls:
	coveralls -e ISHTTPOperationTests -e DemoApp

