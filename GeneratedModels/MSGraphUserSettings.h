// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphShiftPreferences; 


#import "MSGraphEntity.h"

@interface MSGraphUserSettings : MSGraphEntity

  @property (nonatomic, setter=setContributionToContentDiscoveryDisabled:, getter=contributionToContentDiscoveryDisabled) BOOL contributionToContentDiscoveryDisabled;
    @property (nonatomic, setter=setContributionToContentDiscoveryAsOrganizationDisabled:, getter=contributionToContentDiscoveryAsOrganizationDisabled) BOOL contributionToContentDiscoveryAsOrganizationDisabled;
    @property (nullable, nonatomic, setter=setShiftPreferences:, getter=shiftPreferences) MSGraphShiftPreferences* shiftPreferences;
  
@end
