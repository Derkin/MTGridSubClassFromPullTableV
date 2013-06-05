#import <Foundation/Foundation.h>
@interface ShouBoModel : NSObject
@property (retain, nonatomic) NSString *FilmID;
@property (retain, nonatomic) NSString *FilmSize;
@property (retain, nonatomic) NSString *ContentCount;
@property (retain, nonatomic) NSString *SourceID;
@property (retain, nonatomic) NSString *Area;
@property (retain, nonatomic) NSString *FilmFormat;
@property (retain, nonatomic) NSString *ImgUrl;
@property (retain, nonatomic) NSString *ImgUrlB;
@property (retain, nonatomic) NSString *Language;
@property (retain, nonatomic) NSString *SourceName;
@property (retain, nonatomic) NSString *SourceUrl;
@property (retain, nonatomic) NSString *LongTime;
@property (retain, nonatomic) NSString *Mark;
@property (retain, nonatomic) NSString *FilmType;
@property (retain, nonatomic) NSString *Hd;
@property (retain, nonatomic) NSString *Year;
@property (retain, nonatomic) NSString *Mtype;
@property (retain, nonatomic) NSString *Mid;

@property (retain, nonatomic) NSString *FilmName;
@property (retain, nonatomic) NSString *Actor;
@property (retain, nonatomic) NSString *Description;
@property (retain, nonatomic) NSString *Director;
@property (retain, nonatomic) NSString *WatchFocus;
@property (retain, nonatomic) NSString *Introduction;
@property (retain, nonatomic) NSString* fid;

@property (retain, nonatomic) NSArray* _contentNames;
@property (retain, nonatomic) NSArray* _contentFids;

// 3.0新增 为光影档案专题
//ImgUrlO
@property (retain, nonatomic) NSString *ImgUrlO;

// 为了上拉刷新的控制
@property (nonatomic,retain) NSString* fee;
@property (nonatomic) BOOL isGuangYingItem;
@end