#import <Foundation/Foundation.h>

typedef struct {
    float bufferingProgress;
    float totalProgreess;
    int downloadSpeed;
    int upoadSpeed;
    int seeds;
    int peers;
} PTTorrentStatus;

typedef void (^PopcornTorrentProgress)(PTTorrentStatus status);
typedef void (^PopcornTorrentReadyToPlay)(NSURL *videoFileURL);
typedef void (^PopcornTorrentFailure)(NSError *error);

@interface PopcornTorrent : NSObject

+ (instancetype)sharedStreamer;

- (void)startStreamingFromFileOrMagnetLink:(NSString *)filePathOrMagnetLink
                                  progress:(PopcornTorrentProgress)progreess
                               readyToPlay:(PopcornTorrentReadyToPlay)readyToPlay
                                   failure:(PopcornTorrentFailure)failure;

- (void)cancelStreaming;

@end
