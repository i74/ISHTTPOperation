test:
	xcodebuild clean test \
		-sdk iphonesimulator \
		-workspace ISHTTPOperation.xcworkspace \
		-scheme ISHTTPOperation \
		-configuration Debug \
		-destination "name=iPhone Retina (4-inch),OS=7.0" \
		OBJROOT=build \
		GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
		GCC_GENERATE_TEST_COVERAGE_FILES=YES

coveralls:
	coveralls -e UnitTests -e DemoApp -e Pods

