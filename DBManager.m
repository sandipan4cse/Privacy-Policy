//
//  DBManager.m
//  FrankRoss
//
//  Created by Sudip's Office Mac on 21/11/13.
//  Copyright (c) 2013 ForcePower. All rights reserved.
//

#import "DBManager.h"
#import <sqlite3.h>
#import "UserInfo.h"
#import "MemberDetails.h"
//#import "TestFlight.h"
#import "Information.h"

static DBManager *sharedInstance = nil;
static sqlite3 *database = nil;
static sqlite3_stmt *statement = nil;

@implementation DBManager


+(DBManager*)getSharedInstance{
    if (!sharedInstance) {
        sharedInstance = [[super allocWithZone:NULL]init];
        BOOL b1=  [sharedInstance createEditableCopyOfDatabaseIfNeeded];
        if(b1==YES)
        {
//            NSLog(@"save data YES");

        }
        else
        {
//            NSLog(@"save data NO");
        }
    }
    return sharedInstance;
}

-(BOOL)deleteExhibitor
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from exhibitor"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}

-(BOOL)deleteEventdays
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from event_master"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(BOOL) deleteEventlocation
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from event_location"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}

-(BOOL)deleteSpeakers
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from speaker_profile"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(BOOL) deleteSpeakersn
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from speaker_profilen"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}

-(BOOL)deleteSpeakersimg
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from speak_img"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(BOOL) deleteSpeakersimgn
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from speak_imgn"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}

-(BOOL)deletejewel
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from jewel"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(BOOL)deletecomitee
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from comitee"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}


-(BOOL)deleteMembersimg
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from myact_img"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}

-(BOOL)deleteMembers
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from myact"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}


-(BOOL)deleteEventdetails
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from event_details"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}

//serial,name,detail,image,permission,location_id,company,designation,address,phone,fax,email,website

-(BOOL)saveMember: (NSString *)serial : (NSString *)name :(NSString *)detail :(NSString *)image :(NSString *)permission :(NSString *)location_id :(NSString *)company :(NSString *)designation :(NSString *)address :(NSString *)phone :(NSString *)fax :(NSString *)email :(NSString *)website
{
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO exhibitor (serial,name,detail,image,permission,location_id,company,designation,address,phone,fax,email,website) VALUES('%@','%@' ,'%@' ,'%@' ,'%@','%@','%@' ,'%@' ,'%@' ,'%@','%@' ,'%@' ,'%@'  )",serial,name,detail,image,permission,location_id,company,designation,address,phone,fax,email,website];
        
     NSLog(@"Insert Data to exhibitor   %@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    //NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
    
}


- (BOOL)createEditableCopyOfDatabaseIfNeeded {
    // First, test for existence.
    BOOL success;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *writableDBPath = [documentsDirectory stringByAppendingPathComponent:@"eo.sqlite"];
    success = [fileManager fileExistsAtPath:writableDBPath];
//      NSLog(@"open and exist %@",writableDBPath);
    if (success)
    {
        databasePath=writableDBPath;
      //  [TestFlight passCheckpoint:@"Database Open Success"];
        return success;
    }
    // The writable database does not exist, so copy the default to the appropriate location.
    NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"eo.sqlite"];
    success = [fileManager copyItemAtPath:defaultDBPath toPath:writableDBPath error:&error];
  //  NSLog(@"create %@",defaultDBPath);
    if (!success) {
        
   //     [TestFlight passCheckpoint:[NSString stringWithFormat:@"%@",[error localizedDescription]]];
        NSAssert1(0, @"Failed to create writable database file with message '%@'.", [error localizedDescription]);
        return !success;
    }
    else
    {
        databasePath=defaultDBPath;
        
        return success;
    }
    
}

-(NSData *)getMemberImg:(NSString *)sp_id
{
    NSData *data=Nil;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT img FROM myact_img where myact_id='%@'",sp_id];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            int res = sqlite3_step(statement);
            if (res == SQLITE_ROW) {
                const void *ptr = sqlite3_column_blob(statement, 0);
                int size = sqlite3_column_bytes(statement, 0);
                data = [[NSData alloc] initWithBytes:ptr length:size];
                sqlite3_reset(statement);
                
                //        return data ;
            }
        }
        sqlite3_reset(statement);
        
    }
    return data ;
}
-(NSData*)getMemberImgn:(NSString*)sp_id
{
    NSData *data=Nil;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT img FROM myact_img where myact_id='%@'",sp_id];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            int res = sqlite3_step(statement);
            if (res == SQLITE_ROW) {
                const void *ptr = sqlite3_column_blob(statement, 0);
                int size = sqlite3_column_bytes(statement, 0);
                data = [[NSData alloc] initWithBytes:ptr length:size];
                sqlite3_reset(statement);
                
                //        return data ;
            }
        }
        sqlite3_reset(statement);
        
    }
    return data ;

}

-(NSData *)getSpeakerImg:(NSString *)sp_id
{
    NSData *data=Nil;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT image FROM speak_img where speak_id='%@'",sp_id];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
    int res = sqlite3_step(statement);
    if (res == SQLITE_ROW) {
        const void *ptr = sqlite3_column_blob(statement, 0);
        int size = sqlite3_column_bytes(statement, 0);
        data = [[NSData alloc] initWithBytes:ptr length:size];
        sqlite3_reset(statement);
        
//        return data ;
    }
        }
    sqlite3_reset(statement);
        
    }
    return data ;
}
-(NSData*)getSpeakerImg3:(NSString*)sp_id
{
    NSData *data=Nil;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT image FROM speak_img3 where speak_id='%@'",sp_id];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            int res = sqlite3_step(statement);
            if (res == SQLITE_ROW) {
                const void *ptr = sqlite3_column_blob(statement, 0);
                int size = sqlite3_column_bytes(statement, 0);
                data = [[NSData alloc] initWithBytes:ptr length:size];
                sqlite3_reset(statement);
                
                //        return data ;
            }
        }
        sqlite3_reset(statement);
        
    }
    return data ;

}

-(NSData*)getSpeakerImgn:(NSString*)sp_id
{
    NSData *data=Nil;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT image FROM speak_imgn where speak_id='%@'",sp_id];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            int res = sqlite3_step(statement);
            if (res == SQLITE_ROW) {
                const void *ptr = sqlite3_column_blob(statement, 0);
                int size = sqlite3_column_bytes(statement, 0);
                data = [[NSData alloc] initWithBytes:ptr length:size];
                sqlite3_reset(statement);
                
                //        return data ;
            }
        }
        sqlite3_reset(statement);
        
    }
    return data ;

}

-(BOOL)saveSpeakerImage:(NSString *)sp Image:(NSData *)img
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        sqlite3_exec(database, "BEGIN", 0, 0, 0);
        const char *sqlstatement="insert into speak_img values(?,?)";
        sqlite3_stmt *compiledstatement;
        
        if(sqlite3_prepare_v2(database,sqlstatement , -1, &compiledstatement, NULL)==SQLITE_OK)
        {
            int hasError= 0;
            
                           sqlite3_bind_text(compiledstatement,1,[sp UTF8String], -1, SQLITE_TRANSIENT);
                            sqlite3_bind_blob(compiledstatement, 2, [img bytes], [img length], SQLITE_TRANSIENT);
            
                    if(sqlite3_step(compiledstatement)==SQLITE_DONE)
                    {
                        hasError=0;
                    }
                    else {
                        
                        hasError= 1;
                    }
            
                sqlite3_reset(compiledstatement);
     //   NSLog(@"Error : %s",sqlite3_errmsg(database));
            // Really need to check error conditions with commit/rollback
            if( hasError == 0 ) {
                sqlite3_exec(database, "COMMIT", 0, 0, 0);
                return TRUE;
            }
            else {
                sqlite3_exec(database, "ROLLBACK", 0, 0, 0);
                return FALSE;
            }
        }
        else
            return FALSE;
    }
    else
        return FALSE;
}
-(BOOL) saveSpeakerImage3:(NSString *)sp Image:(NSData *) img
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        sqlite3_exec(database, "BEGIN", 0, 0, 0);
        const char *sqlstatement="insert into speak_img3 values(?,?)";
        sqlite3_stmt *compiledstatement;
        
        if(sqlite3_prepare_v2(database,sqlstatement , -1, &compiledstatement, NULL)==SQLITE_OK)
        {
            int hasError= 0;
            
            sqlite3_bind_text(compiledstatement,1,[sp UTF8String], -1, SQLITE_TRANSIENT);
            sqlite3_bind_blob(compiledstatement, 2, [img bytes], [img length], SQLITE_TRANSIENT);
            
            if(sqlite3_step(compiledstatement)==SQLITE_DONE)
            {
                hasError=0;
            }
            else {
                
                hasError= 1;
            }
            
            sqlite3_reset(compiledstatement);
            //   NSLog(@"Error : %s",sqlite3_errmsg(database));
            // Really need to check error conditions with commit/rollback
            if( hasError == 0 ) {
                sqlite3_exec(database, "COMMIT", 0, 0, 0);
                return TRUE;
            }
            else {
                sqlite3_exec(database, "ROLLBACK", 0, 0, 0);
                return FALSE;
            }
        }
        else
            return FALSE;
    }
    else
        return FALSE;

}
-(BOOL) saveSpeakerImagen:(NSString *)sp Image:(NSData *) img
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        sqlite3_exec(database, "BEGIN", 0, 0, 0);
        const char *sqlstatement="insert into speak_imgn values(?,?)";
        sqlite3_stmt *compiledstatement;
        
        if(sqlite3_prepare_v2(database,sqlstatement , -1, &compiledstatement, NULL)==SQLITE_OK)
        {
            int hasError= 0;
            
            sqlite3_bind_text(compiledstatement,1,[sp UTF8String], -1, SQLITE_TRANSIENT);
            sqlite3_bind_blob(compiledstatement, 2, [img bytes], [img length], SQLITE_TRANSIENT);
            
            if(sqlite3_step(compiledstatement)==SQLITE_DONE)
            {
                hasError=0;
            }
            else {
                
                hasError= 1;
            }
            
            sqlite3_reset(compiledstatement);
            //   NSLog(@"Error : %s",sqlite3_errmsg(database));
            // Really need to check error conditions with commit/rollback
            if( hasError == 0 ) {
                sqlite3_exec(database, "COMMIT", 0, 0, 0);
                return TRUE;
            }
            else {
                sqlite3_exec(database, "ROLLBACK", 0, 0, 0);
                return FALSE;
            }
        }
        else
            return FALSE;
    }
    else
        return FALSE;

}

-(BOOL)saveMemberImage:(NSString *)sp Image:(NSData *)img
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        sqlite3_exec(database, "BEGIN", 0, 0, 0);
        const char *sqlstatement="insert into myact_img values(?,?)";
        sqlite3_stmt *compiledstatement;
        
        if(sqlite3_prepare_v2(database,sqlstatement , -1, &compiledstatement, NULL)==SQLITE_OK)
        {
            int hasError= 0;
            
            sqlite3_bind_text(compiledstatement,1,[sp UTF8String], -1, SQLITE_TRANSIENT);
            sqlite3_bind_blob(compiledstatement, 2, [img bytes], [img length], SQLITE_TRANSIENT);
            
            if(sqlite3_step(compiledstatement)==SQLITE_DONE)
            {
                hasError=0;
            }
            else {
                
                hasError= 1;
            }
            
            sqlite3_reset(compiledstatement);
            
            // Really need to check error conditions with commit/rollback
            if( hasError == 0 ) {
                sqlite3_exec(database, "COMMIT", 0, 0, 0);
                return TRUE;
            }
            else {
                sqlite3_exec(database, "ROLLBACK", 0, 0, 0);
                return FALSE;
            }
        }
        else
            return FALSE;
    }
    else
        return FALSE;

}

-(BOOL)saveChapter:(NSString *)chapter
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO chapter VALUES ('%@')",chapter];
        
//        NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
//    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}

-(BOOL)saveuserinfo:(NSString *)name chapter:(NSString *)chapter
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO userinfo VALUES ('%@','%@')",name,chapter];
        
     //   NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
  //  NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}





-(BOOL)deleteuser
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from user"];
        
      //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
   // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}

-(BOOL)saveuser:(NSString *)user password:(NSString *)password
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO user VALUES ('%@','%@')",user,password];
        
      //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
//    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
    
}

-(BOOL) saveEventDay:(EventDay *)event_day{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
  //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO event_master VALUES (%@,'%@','%@')",event_day.day,event_day.date,event_day.locationid];
        
//        NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
//        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
//    NSLog(@"Error : %s",sqlite3_errmsg(database));
 //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(BOOL) saveEventDetails:(EventDetails *)event_details {
    const char *dbpath = [databasePath UTF8String];
    NSMutableString *eid=[[NSMutableString alloc ]init];
  [  eid appendFormat:@"%@%@",event_details.time,event_details.day];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO event_details (day,event_name,event_time,duration,eventdetails_id,description,image)VALUES (%@,'%@','%@','%@','%@','%@','%@')",event_details.day,event_details.event_name,event_details.time,event_details.duration,eid,event_details.description,event_details.image];
        
        NSLog(@"Insert Query------->>>>%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
//    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(BOOL) saveEventLocation:(EventLocation *)event_location{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO event_location VALUES ('%@','%@')",event_location.eventdetails_id,event_location.location];
        
//        NSLog(@"Sql Query    ------>>>>%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
//    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}

-(BOOL) saveSpeaker:(SpeakerProfile *)sp{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO speaker_profile  VALUES ('%@','%@','%@','%@','%@','%@','%@','%@')",sp.pro_id,sp.name,[sp.details stringByReplacingOccurrencesOfString:@"'" withString:@""],sp.time,sp.imgurl,sp.locationid,sp.company,sp.designation];
        
    NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
  //  NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
    
}
-(BOOL)saveSpeaker2:(SpeakerProfileNew3 *)sp
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO speaker_profile3  VALUES ('%@','%@','%@','%@','%@','%@')",sp.pro_id,sp.name,[sp.details stringByReplacingOccurrencesOfString:@"'"
                                                                                                                                                                                        withString:@""],sp.time,sp.imgurl,sp.locationid];
        
        //   NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    //  NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}
-(BOOL)deletespeaker_profile3
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from speaker_profile3"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}

-(BOOL) saveSpeakern:(SpeakerProfileNew *)sp
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO speaker_profilen  VALUES ('%@','%@','%@','%@','%@','%@')",sp.pro_id,sp.name,[sp.details stringByReplacingOccurrencesOfString:@"'"
                                                                                                                                                                                        withString:@""],sp.time,sp.imgurl,sp.locationid];
        
        //   NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    //  NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
    

}
-(NSMutableArray*) GetEventDay
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM event_master"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                EventDay *order_header=[[EventDay alloc]init];
                order_header.day= [[NSString alloc] initWithUTF8String:
                                   (const char *) sqlite3_column_text(statement, 0)];
                                NSLog(@"sqlite data-------------------%@",order_header.date);
                order_header.date = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                
                
                order_header.locationid = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 2)];
                
                
                
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}



-(NSMutableArray*) GetEventDay:(NSString *)locationid{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
       // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM event_master where locationid='%@'",locationid];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
       //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                EventDay *order_header=[[EventDay alloc]init];
                order_header.day= [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 0)];
//                NSLog(@"sqlite data-------------------%@",order_header.date);
                order_header.date = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 1)];
                
                
                order_header.locationid = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 2)];

                
               
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }

    
    return eventlist;
}

-(NSMutableArray *)GetUser
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM user"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                UserInfo *order_header=[[UserInfo alloc]init];
                order_header.name= [[NSString alloc] initWithUTF8String:
                                    (const char *) sqlite3_column_text(statement, 0)];
//                NSLog(@"sqlite data-------------------%@",order_header.name);
                order_header.chapter = [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 1)];
                
                
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}



-(NSMutableArray *)GetUserinfo
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM userinfo"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                UserInfo *order_header=[[UserInfo alloc]init];
                order_header.name= [[NSString alloc] initWithUTF8String:
                                   (const char *) sqlite3_column_text(statement, 0)];
//                NSLog(@"sqlite data-------------------%@",order_header.name);
                order_header.chapter = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                
                
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}

-(NSMutableArray *)GetMembersInfo:(NSString *)industry
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //and Networking_Interest='y'
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT Member_Name , Member_Email , Member_Mobile,Address, City, PIN_Code, Country,Alt_Phone,Chapter,Talk_to_me_about,Talk_to_me_about2,Member_Thumbnail,Business_Name ,Primary_Industry ,Secondary_Industries,Networking_Interest,Spouse_Name ,Spouse_Email ,Spouse_Mobile  FROM myact  where %@  order by Member_Name",industry];
        
    //    NSLog(@"Queruy full %@",querySQL);
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
    //        NSLog(@"sqlite data-------------------");
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                MemberDetails *order_header=[[MemberDetails alloc]init];
                if( sqlite3_column_type(statement, 0)!=SQLITE_NULL)
                    order_header.name= [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 0)];
             //   NSLog(@"sqlite data-------------------%@",order_header.name);
                if( sqlite3_column_type(statement, 1)!=SQLITE_NULL)
                    order_header.email = [[NSString alloc] initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 1)];
                if( sqlite3_column_type(statement, 2)!=SQLITE_NULL)
                    order_header.mobile = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 2)];
                if( sqlite3_column_type(statement, 3)!=SQLITE_NULL)
                    order_header.address = [[NSString alloc] initWithUTF8String:
                                            (const char *) sqlite3_column_text(statement, 3)];
                if( sqlite3_column_type(statement, 5)!=SQLITE_NULL)
                    order_header.pin= [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 5)];
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.city = [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 4)];
                if( sqlite3_column_type(statement, 6)!=SQLITE_NULL)
                    order_header.country = [[NSString alloc] initWithUTF8String:
                                            (const char *) sqlite3_column_text(statement, 6)];
                if( sqlite3_column_type(statement, 7)!=SQLITE_NULL)
                    order_header.alt_phone = [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 7)];
                if( sqlite3_column_type(statement,8)!=SQLITE_NULL)
                    order_header.chaptername = [[NSString alloc] initWithUTF8String:
                                                (const char *) sqlite3_column_text(statement, 8)];
                if( sqlite3_column_type(statement, 9)!=SQLITE_NULL)
                    order_header.alt_to_me = [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 9)];
                if( sqlite3_column_type(statement, 10)!=SQLITE_NULL)
                    order_header.alt_to_me2 = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 10)];
                if( sqlite3_column_type(statement, 11)!=SQLITE_NULL)
                    order_header.Member_Thumbnail = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 11)];
                
                //Business_Name ,Primary_Industry ,Secondary_Industries,Networking_Interest
                if( sqlite3_column_type(statement, 12)!=SQLITE_NULL)
                    order_header.bussiness_name = [[NSString alloc] initWithUTF8String:
                                                     (const char *) sqlite3_column_text(statement, 12)];
                if( sqlite3_column_type(statement, 13)!=SQLITE_NULL)
                    order_header.p_industry = [[NSString alloc] initWithUTF8String:
                                                     (const char *) sqlite3_column_text(statement, 13)];
                if( sqlite3_column_type(statement, 14)!=SQLITE_NULL)
                    order_header.sec_industru = [[NSString alloc] initWithUTF8String:
                                                     (const char *) sqlite3_column_text(statement, 14)];
                if( sqlite3_column_type(statement, 15)!=SQLITE_NULL)
                    order_header.networking = [[NSString alloc] initWithUTF8String:
                                                     (const char *) sqlite3_column_text(statement, 15)];
                if( sqlite3_column_type(statement, 16)!=SQLITE_NULL)
                    order_header.Spouse_Name = [[NSString alloc] initWithUTF8String:
                                                (const char *) sqlite3_column_text(statement, 16)];
                
                if( sqlite3_column_type(statement, 17)!=SQLITE_NULL)
                    order_header.Spouse_Email = [[NSString alloc] initWithUTF8String:
                                                 (const char *) sqlite3_column_text(statement, 17)];
                
                if( sqlite3_column_type(statement, 18)!=SQLITE_NULL)
                    order_header.Spouse_Mobile = [[NSString alloc] initWithUTF8String:
                                                  (const char *) sqlite3_column_text(statement, 18)];
                
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
        else
        {
           // NSLog(@"Failed  run Error : %s", sqlite3_errmsg(database));
        }
    }
    
    
    
    return eventlist;
}

//-(NSMutableArray *)GetMembers:(NSString *)where_cluse
//{
//    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
//    
//    const char *dbpath = [databasePath UTF8String];
//    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
//    {
//        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
//        NSString *querySQL = [NSString stringWithFormat:
//                              @"SELECT Member_Name , Member_Email , Member_Mobile,Address, City, PIN_Code, Country,Alt_Phone,Chapter,Talk_to_me_about,Talk_to_me_about2  FROM myact order by Member_Name"];
//        const char *query_stmt = [querySQL UTF8String];
//        
//        if (sqlite3_prepare_v2(database,
//                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
//        {
//            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
//            while (sqlite3_step(statement) == SQLITE_ROW)
//            {
//                
//                MemberDetails *order_header=[[MemberDetails alloc]init];
//                if( sqlite3_column_type(statement, 0)!=SQLITE_NULL)
//                    order_header.name= [[NSString alloc] initWithUTF8String:
//                                        (const char *) sqlite3_column_text(statement, 0)];
//                //                NSLog(@"sqlite data-------------------%@",order_header.name);
//                if( sqlite3_column_type(statement, 1)!=SQLITE_NULL)
//                    order_header.email = [[NSString alloc] initWithUTF8String:
//                                          (const char *) sqlite3_column_text(statement, 1)];
//                if( sqlite3_column_type(statement, 2)!=SQLITE_NULL)
//                    order_header.mobile = [[NSString alloc] initWithUTF8String:
//                                           (const char *) sqlite3_column_text(statement, 2)];
//                if( sqlite3_column_type(statement, 3)!=SQLITE_NULL)
//                    order_header.address = [[NSString alloc] initWithUTF8String:
//                                            (const char *) sqlite3_column_text(statement, 3)];
//                if( sqlite3_column_type(statement, 5)!=SQLITE_NULL)
//                    order_header.pin= [[NSString alloc] initWithUTF8String:
//                                       (const char *) sqlite3_column_text(statement, 5)];
//                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
//                    order_header.city = [[NSString alloc] initWithUTF8String:
//                                         (const char *) sqlite3_column_text(statement, 4)];
//                if( sqlite3_column_type(statement, 6)!=SQLITE_NULL)
//                    order_header.country = [[NSString alloc] initWithUTF8String:
//                                            (const char *) sqlite3_column_text(statement, 6)];
//                if( sqlite3_column_type(statement, 7)!=SQLITE_NULL)
//                    order_header.alt_phone = [[NSString alloc] initWithUTF8String:
//                                              (const char *) sqlite3_column_text(statement, 7)];
//                if( sqlite3_column_type(statement,8)!=SQLITE_NULL)
//                    order_header.chaptername = [[NSString alloc] initWithUTF8String:
//                                                (const char *) sqlite3_column_text(statement, 8)];
//                if( sqlite3_column_type(statement, 9)!=SQLITE_NULL)
//                    order_header.alt_to_me = [[NSString alloc] initWithUTF8String:
//                                              (const char *) sqlite3_column_text(statement, 9)];
//                if( sqlite3_column_type(statement, 10)!=SQLITE_NULL)
//                    order_header.alt_to_me2 = [[NSString alloc] initWithUTF8String:
//                                               (const char *) sqlite3_column_text(statement, 10)];
//                
//                [eventlist addObject:order_header];
//                order_header=Nil;
//            }
//            sqlite3_finalize(statement);
//        }
//    }
//    
//    
//    return eventlist;
//    
//}


-(NSMutableArray *)GetExhibitorInfo
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM exhibitor order by name"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                //serial,name,detail,image,permission,location_id,company,designation,address,phone,fax,email,website
                
                ExhibitorProfile *order_header=[[ExhibitorProfile alloc]init];
                if( sqlite3_column_type(statement, 0)!=SQLITE_NULL)
                    order_header.serial= [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 0)];
//                NSLog(@"sqlite data-------------------%@",order_header.name);
                if( sqlite3_column_type(statement, 1)!=SQLITE_NULL)
                    order_header.name = [[NSString alloc] initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 1)];
                if( sqlite3_column_type(statement, 2)!=SQLITE_NULL)
                    order_header.detail = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 2)];
                if( sqlite3_column_type(statement, 3)!=SQLITE_NULL)
                    order_header.image = [[NSString alloc] initWithUTF8String:
                                            (const char *) sqlite3_column_text(statement, 3)];
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.permission= [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 4)];
                if( sqlite3_column_type(statement, 5)!=SQLITE_NULL)
                    order_header.location_id= [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 5)];
                if( sqlite3_column_type(statement, 6)!=SQLITE_NULL)
                    order_header.company= [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 6)];
                if( sqlite3_column_type(statement, 7)!=SQLITE_NULL)
                    order_header.designation= [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 7)];
                if( sqlite3_column_type(statement, 8)!=SQLITE_NULL)
                    order_header.address= [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 8)];
                if( sqlite3_column_type(statement, 9)!=SQLITE_NULL)
                    order_header.phone= [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 9)];
                if( sqlite3_column_type(statement, 10)!=SQLITE_NULL)
                    order_header.fax= [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 10)];
                if( sqlite3_column_type(statement, 11)!=SQLITE_NULL)
                    order_header.email= [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 11)];
                if( sqlite3_column_type(statement, 12)!=SQLITE_NULL)
                    order_header.website= [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 12)];
                
                
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}

-(NSMutableArray *)GetMemberInfo
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT Member_Name , Member_Email , Member_Mobile,Address, City, PIN_Code, Country,Alt_Phone,Chapter,Talk_to_me_about,Talk_to_me_about2,Member_Thumbnail,Business_Name ,Primary_Industry ,Secondary_Industries,Networking_Interest,Spouse_Name ,Spouse_Email ,Spouse_Mobile  FROM myact order by Member_Name"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                MemberDetails *order_header=[[MemberDetails alloc]init];
                if( sqlite3_column_type(statement, 0)!=SQLITE_NULL)
                    order_header.name= [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 0)];
//                NSLog(@"sqlite data-------------------%@",order_header.name);
                if( sqlite3_column_type(statement, 1)!=SQLITE_NULL)
                    order_header.email = [[NSString alloc] initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 1)];
                if( sqlite3_column_type(statement, 2)!=SQLITE_NULL)
                    order_header.mobile = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 2)];
                if( sqlite3_column_type(statement, 3)!=SQLITE_NULL)
                    order_header.address = [[NSString alloc] initWithUTF8String:
                                            (const char *) sqlite3_column_text(statement, 3)];
                if( sqlite3_column_type(statement, 5)!=SQLITE_NULL)
                    order_header.pin= [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 5)];
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.city = [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 4)];
                if( sqlite3_column_type(statement, 6)!=SQLITE_NULL)
                    order_header.country = [[NSString alloc] initWithUTF8String:
                                            (const char *) sqlite3_column_text(statement, 6)];
                if( sqlite3_column_type(statement, 7)!=SQLITE_NULL)
                    order_header.alt_phone = [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 7)];
                if( sqlite3_column_type(statement,8)!=SQLITE_NULL)
                    order_header.chaptername = [[NSString alloc] initWithUTF8String:
                                                (const char *) sqlite3_column_text(statement, 8)];
                if( sqlite3_column_type(statement, 9)!=SQLITE_NULL)
                    order_header.alt_to_me = [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 9)];
                if( sqlite3_column_type(statement, 10)!=SQLITE_NULL)
                    order_header.alt_to_me2 = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 10)];
                if( sqlite3_column_type(statement, 11)!=SQLITE_NULL)
                    order_header.Member_Thumbnail = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 11)];
                if( sqlite3_column_type(statement, 12)!=SQLITE_NULL)
                    order_header.bussiness_name = [[NSString alloc] initWithUTF8String:
                                                   (const char *) sqlite3_column_text(statement, 12)];
                if( sqlite3_column_type(statement, 13)!=SQLITE_NULL)
                    order_header.p_industry = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 13)];
                if( sqlite3_column_type(statement, 14)!=SQLITE_NULL)
                    order_header.sec_industru = [[NSString alloc] initWithUTF8String:
                                                 (const char *) sqlite3_column_text(statement, 14)];
                if( sqlite3_column_type(statement, 15)!=SQLITE_NULL)
                    order_header.networking = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 15)];
                if( sqlite3_column_type(statement, 16)!=SQLITE_NULL)
                    order_header.Spouse_Name = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 16)];
                
                if( sqlite3_column_type(statement, 17)!=SQLITE_NULL)
                    order_header.Spouse_Email = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 17)];
                
                if( sqlite3_column_type(statement, 18)!=SQLITE_NULL)
                    order_header.Spouse_Mobile = [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 18)];
                
                
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}



-(NSMutableArray *)GetSpeakerName
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct name FROM speaker_profile"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                [eventlist addObject:[[NSString alloc] initWithUTF8String:
                                      (const char *) sqlite3_column_text(statement, 0)]];
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}
-(NSMutableArray *)GetSpeakerName:(NSString *)locationid
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct name FROM speaker_profile  where locationid='%@'",locationid];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                [eventlist addObject:[[NSString alloc] initWithUTF8String:
                                      (const char *) sqlite3_column_text(statement, 0)]];
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}
-(NSMutableArray *)GetSpeakerNamen
{
    
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct name FROM speaker_profilen"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                [eventlist addObject:[[NSString alloc] initWithUTF8String:
                                      (const char *) sqlite3_column_text(statement, 0)]];
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}

-(NSMutableArray *)Getchapter
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct chapter FROM chapter order by chapter"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                [eventlist addObject:[[NSString alloc] initWithUTF8String:
                                      (const char *) sqlite3_column_text(statement, 0)]];
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}



-(NSMutableArray*) GetEventDetails:(NSString *)event_day_id{
      NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM event_details where day=%@",event_day_id];
        NSLog(@"sqlite data--------Query-----------%@",querySQL);
        
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                EventDetails *order_header=[[EventDetails alloc]init];
                order_header.day= [[NSString alloc] initWithUTF8String:
                                   (const char *) sqlite3_column_text(statement, 0)];
//                NSLog(@"sqlite data-------------------%@",order_header.day);
                order_header.event_name = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                NSLog(@"sqlite data---------event_name----------%@",order_header.event_name);
                order_header.time = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 2)];
                order_header.duration = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 3)];
                
                order_header.description = [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 5)];
                
                order_header.image = [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 6)];
                
            /*    order_header. = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 4)];*/
                
                [eventlist addObject:order_header];
                order_header=Nil;
                
            }
            
            sqlite3_finalize(statement);
        }
    }

    
    return eventlist;
}

-(NSString*) GetDateTime:(NSString *) speaker_name{
    NSString *date_time=[[NSString alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"select     em.date,ed.event_time  from event_details ed,event_master em where em.day=ed.day and ed.event_name ='%@'",speaker_name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                NSMutableString *date_ti=[[NSMutableString alloc] init];
                [date_ti appendFormat:@"%@ %@", [[NSString alloc] initWithUTF8String:
                                                (const char *) sqlite3_column_text(statement, 0)], [[NSString alloc] initWithUTF8String:
                                                                                                    (const char *) sqlite3_column_text(statement, 1)] ];
                date_time= [[NSString alloc] initWithUTF8String:
                                   (const char *) sqlite3_column_text(statement, 0)];
//                NSLog(@"sqlite date-------------------%@ %@",date_time,[[NSString alloc] initWithUTF8String:
//                                                                        (const char *) sqlite3_column_text(statement, 1)]);
                
                
                date_time=date_ti;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return date_time;
}
-(NSString*) GetDateTimen:(NSString *) speaker_name
{
    NSString *date_time=[[NSString alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"select     em.date,ed.event_time  from event_details ed,event_master em where em.day=ed.day and ed.event_name ='%@'",speaker_name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                NSMutableString *date_ti=[[NSMutableString alloc] init];
                [date_ti appendFormat:@"%@ %@", [[NSString alloc] initWithUTF8String:
                                                 (const char *) sqlite3_column_text(statement, 0)], [[NSString alloc] initWithUTF8String:
                                                                                                     (const char *) sqlite3_column_text(statement, 1)] ];
                date_time= [[NSString alloc] initWithUTF8String:
                            (const char *) sqlite3_column_text(statement, 0)];
                //                NSLog(@"sqlite date-------------------%@ %@",date_time,[[NSString alloc] initWithUTF8String:
                //                                                                        (const char *) sqlite3_column_text(statement, 1)]);
                
                
                date_time=date_ti;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return date_time;
}

-(NSMutableArray*) GetEventLocation:(NSString*) event_details_id
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM event_location where eventdetails_id='%@'",event_details_id];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                EventLocation *order_header=[[EventLocation alloc]init];
                
                order_header.eventdetails_id = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 0)];
                
                order_header.location = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                
                /*    order_header. = [[NSString alloc] initWithUTF8String:
                 (const char *) sqlite3_column_text(statement, 4)];*/
                
                [eventlist addObject:order_header];
                order_header=Nil;
                
            }
            
            sqlite3_finalize(statement);
        }
    }

    return eventlist;
}


-(NSMutableArray*) GetSpeakers:(NSString *)locationid
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM speaker_profile where locationid='%@'",locationid];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                SpeakerProfile *order_header=[[SpeakerProfile alloc]init];
                
                order_header.pro_id = [[NSString alloc] initWithUTF8String:
                                                (const char *) sqlite3_column_text(statement, 0)];
                
                order_header.name = [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 1)];
                
                order_header.details = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 2)];
                
                order_header.time = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 3)];
                
                order_header.locationid = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 4)];
                
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.imgurl = [[NSString alloc] initWithUTF8String:
                 (const char *) sqlite3_column_text(statement, 4)];
                
                [eventlist addObject:order_header];
                order_header=Nil;
                
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;
}
-(NSMutableArray*) GetSpeakersss:(NSString *)name
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
//        NSString *querySQL = [NSString stringWithFormat:
//                              @"SELECT * FROM speaker_profile where company like '%%%@%%' order by name",name];
        
//        SELECT *
//        FROM customer
//        WHERE CONCAT(first_name, ' ', last_name) LIKE 'John D%'
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM speaker_profile WHERE name LIKE '%%%@%%' OR company LIKE '%%%@%%'",name,name];
        
        NSLog(@"querySQL---->>>%@",querySQL);
        
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                SpeakerProfile *order_header=[[SpeakerProfile alloc]init];
                
                order_header.pro_id = [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 0)];
                
                order_header.name = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                
                order_header.details = [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 2)];
                
                order_header.time = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 3)];
                
                order_header.locationid = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                order_header.company = [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 6)];
                
                order_header.designation = [[NSString alloc] initWithUTF8String:
                                            (const char *) sqlite3_column_text(statement, 7)];
                
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.imgurl = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                [eventlist addObject:order_header];
                order_header=Nil;
                
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;

}
-(NSMutableArray*)GetSpeakers
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM speaker_profile"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                SpeakerProfile *order_header=[[SpeakerProfile alloc]init];
                
                order_header.pro_id = [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 0)];
                
                order_header.name = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                
                order_header.details = [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 2)];
                
                order_header.time = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 3)];
                
                order_header.locationid = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                order_header.company = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 6)];
                
                order_header.designation = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 7)];
                
                
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.imgurl = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                [eventlist addObject:order_header];
                order_header=Nil;
                
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;

}
-(NSMutableArray*)GetSpeakers3
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM speaker_profile3"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                SpeakerProfileNew3 *order_header=[[SpeakerProfileNew3 alloc]init];
                
                order_header.pro_id = [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 0)];
                
                order_header.name = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                
                order_header.details = [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 2)];
                
                order_header.time = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 3)];
                
                order_header.locationid = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.imgurl = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                [eventlist addObject:order_header];
                order_header=Nil;
                
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;

}

-(NSMutableArray*)GetSpeakersLocation
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct locationid FROM speaker_profile"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;

    
}
-(NSMutableArray*)GetSpeakersLocation3
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct locationid FROM speaker_profile3"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;
    

}
-(NSMutableArray*) GetSpeakersn:(NSString *)locationid
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM speaker_profilen where locationid='%@'",locationid];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                SpeakerProfileNew *order_header=[[SpeakerProfileNew alloc]init];
                
                order_header.pro_id = [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 0)];
                
                order_header.name = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                
                order_header.details = [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 2)];
                
                order_header.time = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 3)];
                
                order_header.locationid = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.imgurl = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                [eventlist addObject:order_header];
                order_header=Nil;
                
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;
}

-(NSMutableArray*)GetSpeakersn
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM speaker_profilen"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                SpeakerProfileNew *order_header=[[SpeakerProfileNew alloc]init];
                
                order_header.pro_id = [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 0)];
                
                order_header.name = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 1)];
                
                order_header.details = [[NSString alloc] initWithUTF8String:
                                        (const char *) sqlite3_column_text(statement, 2)];
                
                order_header.time = [[NSString alloc] initWithUTF8String:
                                     (const char *) sqlite3_column_text(statement, 3)];
                
                order_header.locationid = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.imgurl = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 4)];
                
                [eventlist addObject:order_header];
                order_header=Nil;
                
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;

    
}
-(BOOL)savePlan:(NSString *)date day:(NSString*)day time:(NSString*)time event:(NSString*)event location:(NSString*)location locationid:(NSString*)locationid
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO plan VALUES ('%@','%@','%@','%@','%@','%@')",date,day,time,event,location,locationid];
        
         //NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
        NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(NSMutableArray*)testplan
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct date FROM plan ORDER BY rowid"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    

}
-(BOOL)savemonthtable:(NSString *)month
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO locationt VALUES ('%@') ",month];
        
        // NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    //    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
    
}

-(NSMutableArray*)Getmonthtable
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct location FROM locationt ORDER BY rowid"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
    
}
-(BOOL)deletemonthtable
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from locationt"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
    
}
-(BOOL)deletelocationt
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from month"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(BOOL)deleteinfo
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from info"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}

-(BOOL)deletesponsors
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"delete from sponsors"];
        
        //  NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    // NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}


-(BOOL)savecity:(NSString *)city cityid:(NSString*)cityid
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO month VALUES ('%@','%@')",city,cityid];
        
        //NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
    
}
-(NSMutableArray*)testcity
{
    
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct cityid FROM month ORDER BY rowid"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
}
-(NSMutableArray*)testcityname
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct city FROM month ORDER BY rowid"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}
-(NSMutableArray*)id2:(NSString *)city
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct cityid FROM month where city='%@'",city];
        
        //NSLog(@"%@",querySQL);
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
    
}
-(NSMutableArray*)city:(NSString *)id2
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct city FROM month where cityid='%@'",id2];
        
        //NSLog(@"%@",querySQL);
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}




-(BOOL)savejewel:(NSString *)pagenumber Information:(NSString*)Information
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO jewel VALUES ('%@','%@')",pagenumber,Information];
        
        //NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}
-(NSMutableArray*)testjewel

{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct pagenumber FROM jewel"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

    
}
-(NSMutableArray*)information:(NSString *)pagenumber
{
    
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT Information FROM jewel where pagenumber='%@'",pagenumber];
        
        //NSLog(@"%@",querySQL);
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}
-(BOOL) saveInformation:(NSString *)Srno buttontext:(NSString*) buttontext  info:(NSString*) info type:(NSString*) type
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO info VALUES ('%@','%@','%@','%@')",Srno,buttontext,info,type];
        
        // NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    //    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}
-(NSMutableArray*) getInformationButtonText
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct buttontext FROM info"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
}
-(NSMutableArray*) getInformationButtonTexttest
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct srno FROM info"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}

-(NSMutableArray *)GetSponsorDetails
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM sponsors"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                //id,order,sponsor,image,thumbnail,website,contact_no,description,contact_name,type,type1,company_name,address,phone,fax,email,company_profile
                
                SponsorProfile *order_header=[[SponsorProfile alloc]init];
                if( sqlite3_column_type(statement, 0)!=SQLITE_NULL)
                    order_header.idN= [[NSString alloc] initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 0)];
                //                NSLog(@"sqlite data-------------------%@",order_header.name);
                if( sqlite3_column_type(statement, 1)!=SQLITE_NULL)
                    order_header.order = [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 1)];
                if( sqlite3_column_type(statement, 2)!=SQLITE_NULL)
                    order_header.sponsor = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 2)];
                if( sqlite3_column_type(statement, 3)!=SQLITE_NULL)
                    order_header.image = [[NSString alloc] initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 3)];
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.thumbnail= [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 4)];
                if( sqlite3_column_type(statement, 5)!=SQLITE_NULL)
                    order_header.website= [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 5)];
                if( sqlite3_column_type(statement, 6)!=SQLITE_NULL)
                    order_header.contact_no= [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 6)];
                if( sqlite3_column_type(statement, 7)!=SQLITE_NULL)
                    order_header.description= [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 7)];
                if( sqlite3_column_type(statement, 8)!=SQLITE_NULL)
                    order_header.contact_name= [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 8)];
                
                if( sqlite3_column_type(statement, 9)!=SQLITE_NULL)
                    order_header.type= [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 9)];
                if( sqlite3_column_type(statement, 10)!=SQLITE_NULL)
                    order_header.type1= [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 10)];
                if( sqlite3_column_type(statement, 11)!=SQLITE_NULL)
                    order_header.company_name= [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 11)];
                if( sqlite3_column_type(statement, 12)!=SQLITE_NULL)
                    order_header.address= [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 12)];
                
                
                if( sqlite3_column_type(statement, 13)!=SQLITE_NULL)
                    order_header.phone= [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 13)];
                if( sqlite3_column_type(statement, 14)!=SQLITE_NULL)
                    order_header.fax= [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 14)];
                if( sqlite3_column_type(statement, 15)!=SQLITE_NULL)
                    order_header.email= [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 15)];
                if( sqlite3_column_type(statement, 16)!=SQLITE_NULL)
                    order_header.company_profile= [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 16)];
                
                
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}
//id,order,sponsor,image,thumbnail,website,contact_no,description,contact_name,type,type1,company_name,address,phone,fax,email,company_profile
-(BOOL) savesponsors:(NSString *)idN :(NSString *)order sponsor:(NSString*) sponsor  image:(NSString*) image thumbnail:(NSString*) thumbnail website:(NSString*) website contact_no:(NSString*) contact_no description:(NSString*) description contact_name:(NSString*) contact_name type:(NSString*) type type1:(NSString*) type1 company_name:(NSString*) company_name address:(NSString*) address phone:(NSString*) phone fax:(NSString*) fax email:(NSString*) email company_profile:(NSString*) company_profile
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO sponsors(idN,orderN,sponsor,image,thumbnail,website,contact_no,description,contact_name,type,type1,company_name,address,phone,fax,email,company_profile) VALUES ('%@','%@','%@','%@','%@','%@','%@','%@','%@','%@','%@','%@','%@','%@','%@','%@','%@')",idN,order,sponsor,image,thumbnail,website,contact_no,description,contact_name,type,type1,company_name,address,phone,fax,email,company_profile];
        
        NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;
}

-(ExhibitorProfile *)GetSponsorText1:(NSString*)name
{
//    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    ExhibitorProfile *order_header=[[ExhibitorProfile alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSLog(@"sdhfdsjkfdjghfjgjfjk");
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT company_name,contact_name,description,address,phone,fax,email,website,company_profile,image FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                //serial,name,detail,image,permission,location_id,company,designation,address,phone,fax,email,website
                
//                ExhibitorProfile *order_header=[[ExhibitorProfile alloc]init];
                if( sqlite3_column_type(statement, 0)!=SQLITE_NULL)
                    order_header.company= [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 0)];
                //                NSLog(@"sqlite data-------------------%@",order_header.name);
                if( sqlite3_column_type(statement, 1)!=SQLITE_NULL)
                    order_header.name = [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 1)];
                if( sqlite3_column_type(statement, 2)!=SQLITE_NULL)
                    order_header.designation = [[NSString alloc] initWithUTF8String:
                                                (const char *) sqlite3_column_text(statement, 2)];
                if( sqlite3_column_type(statement, 3)!=SQLITE_NULL)
                    order_header.address = [[NSString alloc] initWithUTF8String:
                                            (const char *) sqlite3_column_text(statement, 3)];
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.phone= [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 4)];
                if( sqlite3_column_type(statement, 5)!=SQLITE_NULL)
                    order_header.fax= [[NSString alloc] initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 5)];
                if( sqlite3_column_type(statement, 6)!=SQLITE_NULL)
                    order_header.email= [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 6)];
                if( sqlite3_column_type(statement, 7)!=SQLITE_NULL)
                    order_header.website= [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 7)];
                if( sqlite3_column_type(statement, 8)!=SQLITE_NULL)
                    order_header.companyprofile= [[NSString alloc] initWithUTF8String:
                                                  (const char *) sqlite3_column_text(statement, 8)];
                
                if( sqlite3_column_type(statement, 8)!=SQLITE_NULL)
                    order_header.image= [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 9)];
                
//                [eventlist addObject:order_header];
//                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return order_header;
    
}

-(NSMutableArray *)GetSponsorText:(NSString*)name
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        
        // [TestFlight passCheckpoint:@"Database Open Success for GET Order Header"];
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT company_name,contact_name,description,address,phone,fax,email,website,company_profile,image FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            //     [TestFlight passCheckpoint:@"Query Success for Order Header"];
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                //serial,name,detail,image,permission,location_id,company,designation,address,phone,fax,email,website
                
                ExhibitorProfile *order_header=[[ExhibitorProfile alloc]init];
                if( sqlite3_column_type(statement, 0)!=SQLITE_NULL)
                    order_header.company= [[NSString alloc] initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 0)];
                //                NSLog(@"sqlite data-------------------%@",order_header.name);
                if( sqlite3_column_type(statement, 1)!=SQLITE_NULL)
                    order_header.name = [[NSString alloc] initWithUTF8String:
                                         (const char *) sqlite3_column_text(statement, 1)];
                if( sqlite3_column_type(statement, 2)!=SQLITE_NULL)
                    order_header.designation = [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 2)];
                if( sqlite3_column_type(statement, 3)!=SQLITE_NULL)
                    order_header.address = [[NSString alloc] initWithUTF8String:
                                          (const char *) sqlite3_column_text(statement, 3)];
                if( sqlite3_column_type(statement, 4)!=SQLITE_NULL)
                    order_header.phone= [[NSString alloc] initWithUTF8String:
                                              (const char *) sqlite3_column_text(statement, 4)];
                if( sqlite3_column_type(statement, 5)!=SQLITE_NULL)
                    order_header.fax= [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 5)];
                if( sqlite3_column_type(statement, 6)!=SQLITE_NULL)
                    order_header.email= [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 6)];
                if( sqlite3_column_type(statement, 7)!=SQLITE_NULL)
                    order_header.website= [[NSString alloc] initWithUTF8String:
                                               (const char *) sqlite3_column_text(statement, 7)];
                if( sqlite3_column_type(statement, 8)!=SQLITE_NULL)
                    order_header.companyprofile= [[NSString alloc] initWithUTF8String:
                                           (const char *) sqlite3_column_text(statement, 8)];
                
                if( sqlite3_column_type(statement, 8)!=SQLITE_NULL)
                    order_header.image= [[NSString alloc] initWithUTF8String:
                                                  (const char *) sqlite3_column_text(statement, 9)];
                
                [eventlist addObject:order_header];
                order_header=Nil;
            }
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}
-(NSString*)getTypeforSection:(NSString*)name
{
//    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    NSString *title;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT type1 FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
//                [eventlist addObject:title];
//                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return title;
    
    
}
-(NSMutableArray*)getsponsorsimage
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT image FROM sponsors"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    

}
-(NSMutableArray*)getsponsorsThumbnail:(NSString*)name
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT thumbnail FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                //                NSLog(@"---->>>>>%@",title);
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}
-(NSMutableArray*)getsponsorsType:(NSString*)name
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT type1 FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                //                NSLog(@"---->>>>>%@",title);
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}

-(NSString*)CheckforSponsorImage:(NSString*)name
{
//    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    NSString *title;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT image FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                //                NSLog(@"--image-->>>>>%@",title);
//                [eventlist addObject:title];
//                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return title;
    
}

-(NSMutableArray*)getsponsorsRowCount:(NSString*)name
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT image FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
//                NSLog(@"--image-->>>>>%@",title);
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    
}
-(NSMutableArray*)getsponsorssponsor
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct sponsor FROM sponsors"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                NSLog(@"---distinct Sponsor Name->>>>>%@",title);
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}
-(NSMutableArray*)getsponsorswebsite:(NSString*)name
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT website FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}
-(NSString*)getsponsorswebsite1:(NSString*)name
{
//    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    NSString *title;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT website FROM sponsors where sponsor = '%@'",name];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
//                [eventlist addObject:title];
//                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return title;
    
}

-(NSMutableArray*)getsponsorssponsor2
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT sponsor FROM sponsors where type='2'"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}
-(NSMutableArray*)getsponsorsimage2
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT image FROM sponsors where type='2'"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}
-(NSMutableArray*)getsponsorsdes2
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT description FROM sponsors where type='2'"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;

}

-(BOOL)savecomitee:(NSString *)name phone:(NSString*)phone email:(NSString*)email
{
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        //      [TestFlight passCheckpoint:@"Database Open Success for Save Order Header"];
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO comitee VALUES ('%@','%@','%@')",name,phone,email];
        
        // NSLog(@"%@",insertSQL);
        
        static sqlite3_stmt *compiledStatement;
        if( sqlite3_exec(database, [insertSQL UTF8String], NULL, NULL, NULL)==SQLITE_OK)
            sqlite3_finalize(compiledStatement);
        //        [TestFlight passCheckpoint:@"Insert Success for Save order Header"];
        return YES;
        
    }
    //    NSLog(@"Error : %s",sqlite3_errmsg(database));
    //   [TestFlight passCheckpoint:[NSString stringWithFormat: @"Insert Faild for Save order Header: %s",sqlite3_errmsg(database)]];
    return NO;

}
-(NSMutableArray*)getcomiteename
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT distinct name FROM comitee"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    
    return eventlist;
    

}
-(NSMutableArray*)getcomiteephone
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT  phone FROM comitee"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;
}
-(NSMutableArray*)getcomiteeemail
{
    NSMutableArray *eventlist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT email FROM comitee"];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                NSString *title= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 0)];
                [eventlist addObject:title];
                title=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    
    return eventlist;

    
}


-(NSMutableArray*) getInformation :(NSString*) text
{
    NSMutableArray *infolist=[[NSMutableArray alloc]init];
    
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM info where buttontext like '%@%' ORDER BY srno",text];
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(database,
                               query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
            while (sqlite3_step(statement) == SQLITE_ROW)
            {
                
                Information *info=[[Information alloc] init];
                info.srno=[[NSString alloc] initWithUTF8String:
                           (const char *) sqlite3_column_text(statement, 0)];
                
                info.buttontext= [[NSString alloc] initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 1)];
                
                info.details= [[NSString alloc] initWithUTF8String:
                               (const char *) sqlite3_column_text(statement, 2)];
                
                info.type= [[NSString alloc] initWithUTF8String:
                               (const char *) sqlite3_column_text(statement, 3)];
                
                [infolist addObject:info];
                
                info=Nil;
            }
            
            sqlite3_finalize(statement);
        }
    }
    // NSLog(@"Size %lu",(unsigned long)[infolist count]);
    
    return infolist;

}

-(void)close
{
     sqlite3_close(database);
}
@end
