#import "ShouBoModel.h"
@implementation ShouBoModel

@synthesize FilmID,FilmSize,ContentCount,SourceID,Area,FilmFormat,ImgUrl,ImgUrlB,Language,SourceName,SourceUrl,LongTime,Mark,FilmType,Hd,Year,Mtype,Mid,FilmName,Actor,Description,Director,WatchFocus,Introduction,_contentNames,_contentFids,ImgUrlO,fee,isGuangYingItem,fid;

- (void) dealloc{

    self._contentFids = nil;
    self.fid = nil;
    self.fee = nil;
    self.ImgUrlO = nil;
    self.FilmID = nil;
    self.FilmSize = nil;
    self.ContentCount = nil;
    self.SourceID = nil;
    self.Area = nil;
    self.FilmFormat = nil;
    self.ImgUrl = nil;
    self.ImgUrlB = nil;
    self.Language = nil;
    self.SourceName = nil;
    self.SourceUrl = nil;
    self.LongTime = nil;
    self.Mark = nil;
    self.FilmType = nil;
    self.Hd = nil;
    self.Year = nil;
    self.Mtype = nil;
    self.Mid = nil;

    self.FilmName = nil;
    self.Actor = nil;
    self.Description = nil;
    self.Director = nil;
    self.WatchFocus = nil;
    self.Introduction = nil;
    self._contentNames = nil;
    [super dealloc];
}
@end