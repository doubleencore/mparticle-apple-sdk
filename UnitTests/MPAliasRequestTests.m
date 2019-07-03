#import <XCTest/XCTest.h>
#import "MPAliasRequest.h"
#import "mParticle.h"

@interface MPAliasRequestTests : XCTestCase

@end

@implementation MPAliasRequestTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testAliasInitWithMPIDs {
    MPAliasRequest *request = [MPAliasRequest requestWithSourceMPID:@1 destinationMPID:@2 startTime:[NSDate dateWithTimeIntervalSince1970:100] endTime:[NSDate dateWithTimeIntervalSince1970:200]];
    XCTAssertEqualObjects(request.sourceMPID, @1);
    XCTAssertEqualObjects(request.destinationMPID, @2);
    XCTAssertEqualObjects(request.startTime, [NSDate dateWithTimeIntervalSince1970:100]);
    XCTAssertEqualObjects(request.endTime, [NSDate dateWithTimeIntervalSince1970:200]);
}

@end
