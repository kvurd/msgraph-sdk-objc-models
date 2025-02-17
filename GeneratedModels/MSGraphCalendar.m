// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCalendar()
{
    NSString* _name;
    MSGraphCalendarColor* _color;
    NSString* _changeKey;
    BOOL _canShare;
    BOOL _canViewPrivateItems;
    BOOL _canEdit;
    MSGraphEmailAddress* _owner;
    NSArray* _allowedOnlineMeetingProviders;
    MSGraphOnlineMeetingProviderType* _defaultOnlineMeetingProvider;
    BOOL _isTallyingResponses;
    BOOL _isRemovable;
    NSArray* _singleValueExtendedProperties;
    NSArray* _multiValueExtendedProperties;
    NSArray* _calendarPermissions;
    NSArray* _events;
    NSArray* _calendarView;
}
@end

@implementation MSGraphCalendar

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.calendar";
    }
    return self;
}
- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (MSGraphCalendarColor*) color
{
    if(!_color){
        _color = [self.dictionary[@"color"] toMSGraphCalendarColor];
    }
    return _color;
}

- (void) setColor: (MSGraphCalendarColor*) val
{
    _color = val;
    self.dictionary[@"color"] = val;
}

- (NSString*) changeKey
{
    if([[NSNull null] isEqual:self.dictionary[@"changeKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"changeKey"];
}

- (void) setChangeKey: (NSString*) val
{
    self.dictionary[@"changeKey"] = val;
}

- (BOOL) canShare
{
    _canShare = [self.dictionary[@"canShare"] boolValue];
    return _canShare;
}

- (void) setCanShare: (BOOL) val
{
    _canShare = val;
    self.dictionary[@"canShare"] = @(val);
}

- (BOOL) canViewPrivateItems
{
    _canViewPrivateItems = [self.dictionary[@"canViewPrivateItems"] boolValue];
    return _canViewPrivateItems;
}

- (void) setCanViewPrivateItems: (BOOL) val
{
    _canViewPrivateItems = val;
    self.dictionary[@"canViewPrivateItems"] = @(val);
}

- (BOOL) canEdit
{
    _canEdit = [self.dictionary[@"canEdit"] boolValue];
    return _canEdit;
}

- (void) setCanEdit: (BOOL) val
{
    _canEdit = val;
    self.dictionary[@"canEdit"] = @(val);
}

- (MSGraphEmailAddress*) owner
{
    if(!_owner){
        _owner = [[MSGraphEmailAddress alloc] initWithDictionary: self.dictionary[@"owner"]];
    }
    return _owner;
}

- (void) setOwner: (MSGraphEmailAddress*) val
{
    _owner = val;
    self.dictionary[@"owner"] = val;
}

- (NSArray*) allowedOnlineMeetingProviders
{
    if(!_allowedOnlineMeetingProviders){
        
    NSMutableArray *allowedOnlineMeetingProvidersResult = [NSMutableArray array];
    NSArray *allowedOnlineMeetingProviders = self.dictionary[@"allowedOnlineMeetingProviders"];

    if ([allowedOnlineMeetingProviders isKindOfClass:[NSArray class]]){
        for (id tempOnlineMeetingProviderType in allowedOnlineMeetingProviders){
            [allowedOnlineMeetingProvidersResult addObject:tempOnlineMeetingProviderType];
        }
    }

    _allowedOnlineMeetingProviders = allowedOnlineMeetingProvidersResult;
        
    }
    return _allowedOnlineMeetingProviders;
}

- (void) setAllowedOnlineMeetingProviders: (NSArray*) val
{
    _allowedOnlineMeetingProviders = val;
    self.dictionary[@"allowedOnlineMeetingProviders"] = val;
}

- (MSGraphOnlineMeetingProviderType*) defaultOnlineMeetingProvider
{
    if(!_defaultOnlineMeetingProvider){
        _defaultOnlineMeetingProvider = [self.dictionary[@"defaultOnlineMeetingProvider"] toMSGraphOnlineMeetingProviderType];
    }
    return _defaultOnlineMeetingProvider;
}

- (void) setDefaultOnlineMeetingProvider: (MSGraphOnlineMeetingProviderType*) val
{
    _defaultOnlineMeetingProvider = val;
    self.dictionary[@"defaultOnlineMeetingProvider"] = val;
}

- (BOOL) isTallyingResponses
{
    _isTallyingResponses = [self.dictionary[@"isTallyingResponses"] boolValue];
    return _isTallyingResponses;
}

- (void) setIsTallyingResponses: (BOOL) val
{
    _isTallyingResponses = val;
    self.dictionary[@"isTallyingResponses"] = @(val);
}

- (BOOL) isRemovable
{
    _isRemovable = [self.dictionary[@"isRemovable"] boolValue];
    return _isRemovable;
}

- (void) setIsRemovable: (BOOL) val
{
    _isRemovable = val;
    self.dictionary[@"isRemovable"] = @(val);
}

- (NSArray*) singleValueExtendedProperties
{
    if(!_singleValueExtendedProperties){
        
    NSMutableArray *singleValueExtendedPropertiesResult = [NSMutableArray array];
    NSArray *singleValueExtendedProperties = self.dictionary[@"singleValueExtendedProperties"];

    if ([singleValueExtendedProperties isKindOfClass:[NSArray class]]){
        for (id tempSingleValueLegacyExtendedProperty in singleValueExtendedProperties){
            [singleValueExtendedPropertiesResult addObject:tempSingleValueLegacyExtendedProperty];
        }
    }

    _singleValueExtendedProperties = singleValueExtendedPropertiesResult;
        
    }
    return _singleValueExtendedProperties;
}

- (void) setSingleValueExtendedProperties: (NSArray*) val
{
    _singleValueExtendedProperties = val;
    self.dictionary[@"singleValueExtendedProperties"] = val;
}

- (NSArray*) multiValueExtendedProperties
{
    if(!_multiValueExtendedProperties){
        
    NSMutableArray *multiValueExtendedPropertiesResult = [NSMutableArray array];
    NSArray *multiValueExtendedProperties = self.dictionary[@"multiValueExtendedProperties"];

    if ([multiValueExtendedProperties isKindOfClass:[NSArray class]]){
        for (id tempMultiValueLegacyExtendedProperty in multiValueExtendedProperties){
            [multiValueExtendedPropertiesResult addObject:tempMultiValueLegacyExtendedProperty];
        }
    }

    _multiValueExtendedProperties = multiValueExtendedPropertiesResult;
        
    }
    return _multiValueExtendedProperties;
}

- (void) setMultiValueExtendedProperties: (NSArray*) val
{
    _multiValueExtendedProperties = val;
    self.dictionary[@"multiValueExtendedProperties"] = val;
}

- (NSArray*) calendarPermissions
{
    if(!_calendarPermissions){
        
    NSMutableArray *calendarPermissionsResult = [NSMutableArray array];
    NSArray *calendarPermissions = self.dictionary[@"calendarPermissions"];

    if ([calendarPermissions isKindOfClass:[NSArray class]]){
        for (id tempCalendarPermission in calendarPermissions){
            [calendarPermissionsResult addObject:tempCalendarPermission];
        }
    }

    _calendarPermissions = calendarPermissionsResult;
        
    }
    return _calendarPermissions;
}

- (void) setCalendarPermissions: (NSArray*) val
{
    _calendarPermissions = val;
    self.dictionary[@"calendarPermissions"] = val;
}

- (NSArray*) events
{
    if(!_events){
        
    NSMutableArray *eventsResult = [NSMutableArray array];
    NSArray *events = self.dictionary[@"events"];

    if ([events isKindOfClass:[NSArray class]]){
        for (id tempEvent in events){
            [eventsResult addObject:tempEvent];
        }
    }

    _events = eventsResult;
        
    }
    return _events;
}

- (void) setEvents: (NSArray*) val
{
    _events = val;
    self.dictionary[@"events"] = val;
}

- (NSArray*) calendarView
{
    if(!_calendarView){
        
    NSMutableArray *calendarViewResult = [NSMutableArray array];
    NSArray *calendarView = self.dictionary[@"calendarView"];

    if ([calendarView isKindOfClass:[NSArray class]]){
        for (id tempEvent in calendarView){
            [calendarViewResult addObject:tempEvent];
        }
    }

    _calendarView = calendarViewResult;
        
    }
    return _calendarView;
}

- (void) setCalendarView: (NSArray*) val
{
    _calendarView = val;
    self.dictionary[@"calendarView"] = val;
}


@end
