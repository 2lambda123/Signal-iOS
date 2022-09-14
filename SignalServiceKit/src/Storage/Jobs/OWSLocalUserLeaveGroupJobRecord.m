//
//  Copyright (c) 2022 Open Whisper Systems. All rights reserved.
//

#import "OWSLocalUserLeaveGroupJobRecord.h"

@implementation OWSLocalUserLeaveGroupJobRecord

- (instancetype)initWithThreadId:(NSString *)threadId
            replacementAdminUuid:(nullable NSString *)replacementAdminUuid
        waitForMessageProcessing:(bool)waitForMessageProcessing
                           label:(NSString *)label
{
    self = [super initWithLabel:label];
    if (self) {
        _threadId = threadId;
        _replacementAdminUuid = replacementAdminUuid;
        _waitForMessageProcessing = waitForMessageProcessing;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    return [super initWithCoder:coder];
}

// --- CODE GENERATION MARKER

// This snippet is generated by /Scripts/sds_codegen/sds_generate.py. Do not manually edit it, instead run
// `sds_codegen.sh`.

// clang-format off

- (instancetype)initWithGrdbId:(int64_t)grdbId
                      uniqueId:(NSString *)uniqueId
      exclusiveProcessIdentifier:(nullable NSString *)exclusiveProcessIdentifier
                    failureCount:(NSUInteger)failureCount
                           label:(NSString *)label
                          sortId:(unsigned long long)sortId
                          status:(SSKJobRecordStatus)status
            replacementAdminUuid:(nullable NSString *)replacementAdminUuid
                        threadId:(NSString *)threadId
        waitForMessageProcessing:(BOOL)waitForMessageProcessing
{
    self = [super initWithGrdbId:grdbId
                        uniqueId:uniqueId
        exclusiveProcessIdentifier:exclusiveProcessIdentifier
                      failureCount:failureCount
                             label:label
                            sortId:sortId
                            status:status];

    if (!self) {
        return self;
    }

    _replacementAdminUuid = replacementAdminUuid;
    _threadId = threadId;
    _waitForMessageProcessing = waitForMessageProcessing;

    return self;
}

// clang-format on

// --- CODE GENERATION MARKER

@end