//
//  GoogleService.m
//  Prova IOs
//
//  Created by Cast Group on 06/01/18.
//  Copyright © 2018 Cast Group. All rights reserved.
//

#import "GoogleService.h"

@implementation GoogleService

static NSString *API_KEY = @"AIzaSyCMpP_TwZKF_HyJni5bQDvxfFytskTmFUU";
static NSString * BASE_URL = @"https://maps.googleapis.com/maps/api/geocode/json?address=%@&key=%@";

-(NSDictionary *)recuperarEndereco:(NSString *)cep {
    
    NSString *url = [NSString stringWithFormat: BASE_URL, cep,API_KEY];
    
    NSData *data = [NSData dataWithContentsOfURL: [NSURL URLWithString:url]];
    
    NSError *jsonError = nil;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&jsonError];
    
    if(jsonError)
        return nil;
    else
        return json;
    
}


@end
