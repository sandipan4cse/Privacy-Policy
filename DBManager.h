//
//  DBManager.h
//  FrankRoss
//
//  Created by Sudip's Office Mac on 21/11/13.
//  Copyright (c) 2013 ForcePower. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "EventDay.h"
#import "EventDetails.h"
#import "EventLocation.h"
#import "SpeakerProfile.h"
#import "SpeakerProfileNew.h"
#import "SpeakerProfileNew3.h"
#import "ExhibitorProfile.h"
#import "SponsorProfile.h"


@interface DBManager : NSObject
{
 
	NSString *databasePath;

}
//-(void) getdata;
+(DBManager*)getSharedInstance;
-(NSMutableArray *)Getchapter;

-(BOOL) saveEventDay:(EventDay *)event_day;
-(BOOL) saveChapter:(NSString *)chapter;
-(BOOL) saveEventDetails:(EventDetails *)event_details ;
-(BOOL) saveEventLocation:(EventLocation *)event_location;
-(NSData*)getMemberImg:(NSString*)sp_id;


////////////////////////////////////
-(BOOL) saveSpeaker:(SpeakerProfile *)sp;
-(BOOL) saveSpeakerImage:(NSString *)sp Image:(NSData *) img;
-(NSData*)getSpeakerImg:(NSString*)sp_id;


-(NSMutableArray *)GetSpeakerName;
//new filtert
-(NSMutableArray *)GetSpeakerName:(NSString *)locationid;

-(NSString*) GetDateTime:(NSString *) speaker_name;
-(NSMutableArray*) GetSpeakers:(NSString *)locationid;

//search field
-(NSMutableArray*) GetSpeakersss:(NSString *)name;
//search field

//***new for Location Id 0//***
-(NSMutableArray*)GetSpeakers;
-(NSMutableArray*)GetSpeakersLocation;
///////////
//jury
-(BOOL)saveSpeaker2:(SpeakerProfileNew3 *)sp;
-(NSMutableArray*)GetSpeakersLocation3;
-(NSMutableArray*)GetSpeakers3;

-(BOOL) saveSpeakerImage3:(NSString *)sp Image:(NSData *) img;
-(NSData*)getSpeakerImg3:(NSString*)sp_id;




///////////


//new just like speker
-(BOOL) saveSpeakern:(SpeakerProfileNew *)sp;
-(BOOL) saveSpeakerImagen:(NSString *)sp Image:(NSData *) img;
-(NSData*)getSpeakerImgn:(NSString*)sp_id;


-(NSMutableArray *)GetSpeakerNamen;
-(NSString*) GetDateTimen:(NSString *) speaker_name;
-(NSMutableArray*) GetSpeakersn:(NSString *)locationid;
//new for resource
-(NSMutableArray*)GetSpeakersn;



////////////////////////////////////
-(BOOL) saveMemberImage:(NSString *)sp Image:(NSData *) img;
-(BOOL) saveuserinfo:(NSString *)name chapter:(NSString*) chapter;
-(BOOL) saveuser:(NSString *)name password:(NSString*) password;
-(BOOL)saveMember: (NSString *)serial : (NSString *)name :(NSString *)detail :(NSString *)image :(NSString *)permission :(NSString *)location_id :(NSString *)company :(NSString *)designation :(NSString *)address :(NSString *)phone :(NSString *)fax :(NSString *)email :(NSString *)website;
-(BOOL) deleteuser;
-(BOOL) deleteMembers;

-(BOOL) deleteMembersimg;
-(NSMutableArray*) GetUser;
-(NSMutableArray*) GetUserinfo;
-(NSMutableArray*) GetMemberInfo;
-(NSMutableArray*) GetMembersInfo :(NSString *)industry;
//-(NSMutableArray*) GetMembers:(NSString *) where_cluse;

//new Infocom 2015
-(NSMutableArray*) GetEventDay;
-(NSMutableArray*) GetEventDay:(NSString *)locationid;

//new explore

-(NSMutableArray*) GetEventDetails:(NSString *)event_day_id;
-(NSMutableArray*) GetEventLocation:(NSString*) event_details_id;

-(void)close;

////////////////////new database by rupak///////////////
//Plan
-(BOOL)savePlan:(NSString *)date day:(NSString*)day time:(NSString*)time event:(NSString*)event location:(NSString*)location locationid:(NSString*)locationid;

-(NSMutableArray*)testplan;

//monthtable
-(BOOL)savemonthtable:(NSString *)month;
-(NSMutableArray*)Getmonthtable;


///citytable
-(BOOL)savecity:(NSString *)city cityid:(NSString*)cityid;
-(NSMutableArray*)testcity;
-(NSMutableArray*)testcityname;
-(NSMutableArray*)id2:(NSString *)city;
//reverse
-(NSMutableArray*)city:(NSString *)id2;


//new jewel
-(BOOL)savejewel:(NSString *)pagenumber Information:(NSString*)pagenumber;
-(NSMutableArray*)testjewel;

-(NSMutableArray*)information:(NSString *)pagenumber;


/////new about vc

-(BOOL) saveInformation:(NSString *)Srno buttontext:(NSString*) buttontext  info:(NSString*) info type:(NSString*) type;
-(NSMutableArray*) getInformationButtonText;
-(NSMutableArray*) getInformation :(NSString*) text;
-(NSMutableArray*) getInformationButtonTexttest;


//new sponsors
//-(BOOL) savesponsors:(NSString *)order sponsor:(NSString*) sponsor  image:(NSString*) image website:(NSString*) website type:(NSString*) type description:(NSString*) description;
-(BOOL) savesponsors:(NSString *)idN :(NSString *)order sponsor:(NSString*) sponsor  image:(NSString*) image thumbnail:(NSString*) thumbnail website:(NSString*) website contact_no:(NSString*) contact_no description:(NSString*) description contact_name:(NSString*) contact_name type:(NSString*) type type1:(NSString*) type1 company_name:(NSString*) company_name address:(NSString*) address phone:(NSString*) phone fax:(NSString*) fax email:(NSString*) email company_profile:(NSString*) company_profile;

-(NSMutableArray *)GetSponsorDetails;

//type1
-(NSMutableArray*)getsponsorsimage;
-(NSMutableArray*)getsponsorssponsor;
-(NSMutableArray*)getsponsorswebsite;

//type2
-(NSMutableArray*)getsponsorssponsor2;
-(NSMutableArray*)getsponsorsimage2;
-(NSMutableArray*)getsponsorsdes2;

//new sponsors comitee
-(BOOL)savecomitee:(NSString *)name phone:(NSString*)phone email:(NSString*)email;
-(NSMutableArray*)getcomiteename;
-(NSMutableArray*)getcomiteephone;
-(NSMutableArray*)getcomiteeemail;





////////////////////////////////////////////VERSION UPDATE DELETE QUERY///////////////////////////////////////
///1>>>>>>>for E......
-(BOOL) deleteEventdetails;
-(BOOL) deleteEventdays;
-(BOOL) deleteEventlocation;


///2>>>>>>>>>>for S...........
-(BOOL) deleteSpeakers;
-(BOOL) deleteSpeakersimg;


////3>>>>>>>>>for L......
-(BOOL)deletemonthtable;
-(BOOL)deletelocationt;


////4>>>>>>>>>for I.......
-(BOOL)deleteinfo;

///5>>>>>>>>for P......
-(BOOL)deletesponsors;


////6>>>>>>> for R....
-(BOOL) deleteSpeakersn;
-(BOOL) deleteSpeakersimgn;


///7>>>>>>>>> for J.....
-(BOOL)deletejewel;


///8>>>>>>>>> for C.....
-(BOOL)deletecomitee;

//ceremony
-(BOOL)deletespeaker_profile3;

//D for exhibitors
-(BOOL)deleteExhibitor;


//Exhibitor Part
-(NSMutableArray *)GetExhibitorInfo;


///New Added
-(NSMutableArray*)getsponsorsType:(NSString*)name;
-(NSMutableArray*)getsponsorsRowCount:(NSString*)name;
-(NSMutableArray*)getsponsorsThumbnail:(NSString*)name;
-(NSMutableArray*)getsponsorswebsite:(NSString*)name;
-(NSMutableArray *)GetSponsorText:(NSString*)name;
-(NSString*)getTypeforSection:(NSString*)name;

-(NSString*)getsponsorswebsite1:(NSString*)name;
-(ExhibitorProfile *)GetSponsorText1:(NSString*)name;
-(NSString*)CheckforSponsorImage:(NSString*)name;


@end
