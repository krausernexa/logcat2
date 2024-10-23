.class public Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;
.super Ljava/lang/Object;
.source "SearchPresenter.java"

# interfaces
.implements Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;
.implements Lcom/spotify/sdk/android/player/PlayerNotificationCallback;
.implements Lcom/spotify/sdk/android/player/ConnectionStateCallback;


# static fields
.field public static final CLIENT_ID:Ljava/lang/String; = "d46e20165d8847238cd10833e816fc47"

.field public static final PAGE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static mPlayer:Lcom/spotify/sdk/android/player/Player;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPlayerState:Lcom/spotify/sdk/android/player/PlayerState;

.field private mCurrentQuery:Ljava/lang/String;

.field private mIMusicStateListener:Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;

.field private mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

.field private mSearchPager:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkaaes/spotify/webapi/android/models/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lkaaes/spotify/webapi/android/models/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "trackList":Ljava/util/List;, "Ljava/util/List<Lkaaes/spotify/webapi/android/models/Track;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/spotify/sdk/android/player/PlayerState;

    invoke-direct {v0}, Lcom/spotify/sdk/android/player/PlayerState;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentPlayerState:Lcom/spotify/sdk/android/player/PlayerState;

    .line 58
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$1;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$1;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 73
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->trackList:Ljava/util/List;

    .line 75
    return-void
.end method

.method static synthetic access$000()Lcom/spotify/sdk/android/player/Player;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    return-object v0
.end method

.method static synthetic access$002(Lcom/spotify/sdk/android/player/Player;)Lcom/spotify/sdk/android/player/Player;
    .locals 0
    .param p0, "x0"    # Lcom/spotify/sdk/android/player/Player;

    .prologue
    .line 34
    sput-object p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;Landroid/content/Context;)Lcom/spotify/sdk/android/player/Connectivity;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->getNetworkConnectivity(Landroid/content/Context;)Lcom/spotify/sdk/android/player/Connectivity;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkConnectivity(Landroid/content/Context;)Lcom/spotify/sdk/android/player/Connectivity;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 217
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 218
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/spotify/sdk/android/player/Connectivity;->fromNetworkType(I)Lcom/spotify/sdk/android/player/Connectivity;

    move-result-object v2

    .line 221
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/spotify/sdk/android/player/Connectivity;->OFFLINE:Lcom/spotify/sdk/android/player/Connectivity;

    goto :goto_0
.end method

.method private logError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method private logMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private onAuthenticationComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v1, ""

    const-string v2, "Got authentication token"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    if-nez v1, :cond_0

    .line 189
    new-instance v0, Lcom/spotify/sdk/android/player/Config;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mContext:Landroid/content/Context;

    const-string v2, "d46e20165d8847238cd10833e816fc47"

    invoke-direct {v0, v1, p1, v2}, Lcom/spotify/sdk/android/player/Config;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v0, "playerConfig":Lcom/spotify/sdk/android/player/Config;
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$2;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$2;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;)V

    invoke-static {v0, p0, v1}, Lcom/spotify/sdk/android/player/Spotify;->getPlayer(Lcom/spotify/sdk/android/player/Config;Ljava/lang/Object;Lcom/spotify/sdk/android/player/Player$InitializationObserver;)Lcom/spotify/sdk/android/player/Player;

    move-result-object v1

    sput-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    .line 212
    .end local v0    # "playerConfig":Lcom/spotify/sdk/android/player/Config;
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v1, p1}, Lcom/spotify/sdk/android/player/Player;->login(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 122
    return-void
.end method

.method public getCurrentQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    return-object v0
.end method

.method public highBitrate()V
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    sget-object v1, Lcom/spotify/sdk/android/player/PlaybackBitrate;->BITRATE_HIGH:Lcom/spotify/sdk/android/player/PlaybackBitrate;

    invoke-virtual {v0, v1}, Lcom/spotify/sdk/android/player/Player;->setPlaybackBitrate(Lcom/spotify/sdk/android/player/PlaybackBitrate;)V

    .line 256
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 3
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v1, "Api Client created"

    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->logMessage(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lkaaes/spotify/webapi/android/SpotifyApi;

    invoke-direct {v0}, Lkaaes/spotify/webapi/android/SpotifyApi;-><init>()V

    .line 82
    .local v0, "spotifyApi":Lkaaes/spotify/webapi/android/SpotifyApi;
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Lkaaes/spotify/webapi/android/SpotifyApi;->setAccessToken(Ljava/lang/String;)Lkaaes/spotify/webapi/android/SpotifyApi;

    .line 88
    :goto_0
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;

    invoke-virtual {v0}, Lkaaes/spotify/webapi/android/SpotifyApi;->getService()Lkaaes/spotify/webapi/android/SpotifyService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;-><init>(Lkaaes/spotify/webapi/android/SpotifyService;)V

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mSearchPager:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;

    .line 90
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->onAuthenticationComplete(Ljava/lang/String;)V

    .line 92
    return-void

    .line 85
    :cond_0
    const-string v1, "No valid access token"

    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadMoreResults()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Load more..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mSearchPager:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mSearchListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->getNextPage(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V

    .line 145
    return-void
.end method

.method public lowBitrate()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    sget-object v1, Lcom/spotify/sdk/android/player/PlaybackBitrate;->BITRATE_LOW:Lcom/spotify/sdk/android/player/PlaybackBitrate;

    invoke-virtual {v0, v1}, Lcom/spotify/sdk/android/player/Player;->setPlaybackBitrate(Lcom/spotify/sdk/android/player/PlaybackBitrate;)V

    .line 248
    return-void
.end method

.method public normalBitrate()V
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    sget-object v1, Lcom/spotify/sdk/android/player/PlaybackBitrate;->BITRATE_NORMAL:Lcom/spotify/sdk/android/player/PlaybackBitrate;

    invoke-virtual {v0, v1}, Lcom/spotify/sdk/android/player/Player;->setPlaybackBitrate(Lcom/spotify/sdk/android/player/PlaybackBitrate;)V

    .line 252
    return-void
.end method

.method public onConnectionMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 294
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v0, p0}, Lcom/spotify/sdk/android/player/Player;->removePlayerNotificationCallback(Lcom/spotify/sdk/android/player/PlayerNotificationCallback;)V

    .line 286
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v0, p0}, Lcom/spotify/sdk/android/player/Player;->removeConnectionStateCallback(Lcom/spotify/sdk/android/player/ConnectionStateCallback;)V

    .line 288
    :cond_0
    invoke-static {p0}, Lcom/spotify/sdk/android/player/Spotify;->destroyPlayer(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public onLoggedIn()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public onLoggedOut()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onLoginFailed(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    return-void
.end method

.method public onPlaybackError(Lcom/spotify/sdk/android/player/PlayerNotificationCallback$ErrorType;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/spotify/sdk/android/player/PlayerNotificationCallback$ErrorType;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 319
    return-void
.end method

.method public onPlaybackEvent(Lcom/spotify/sdk/android/player/PlayerNotificationCallback$EventType;Lcom/spotify/sdk/android/player/PlayerState;)V
    .locals 2
    .param p1, "eventType"    # Lcom/spotify/sdk/android/player/PlayerNotificationCallback$EventType;
    .param p2, "playerState"    # Lcom/spotify/sdk/android/player/PlayerState;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentPlayerState:Lcom/spotify/sdk/android/player/PlayerState;

    iget-boolean v0, v0, Lcom/spotify/sdk/android/player/PlayerState;->playing:Z

    if-eqz v0, :cond_1

    .line 324
    iget-boolean v0, p2, Lcom/spotify/sdk/android/player/PlayerState;->playing:Z

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPlayStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mIMusicStateListener:Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;

    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;->onPlayStop()V

    .line 336
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentPlayerState:Lcom/spotify/sdk/android/player/PlayerState;

    .line 337
    return-void

    .line 330
    :cond_1
    iget-boolean v0, p2, Lcom/spotify/sdk/android/player/PlayerState;->playing:Z

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPlayStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mIMusicStateListener:Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;

    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;->onPlayStart()V

    goto :goto_0
.end method

.method public onTemporaryError()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v0}, Lcom/spotify/sdk/android/player/Player;->pause()V

    .line 139
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v0}, Lcom/spotify/sdk/android/player/Player;->resume()V

    .line 133
    return-void
.end method

.method public search(Ljava/lang/String;Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V
    .locals 2
    .param p1, "searchQuery"    # Ljava/lang/String;
    .param p2, "searchListener"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query text submit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->logMessage(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->trackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mSearchPager:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1, p2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->getFirstPage(Ljava/lang/String;ILcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V

    .line 116
    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/spotify/sdk/android/player/Player;->seekToPosition(I)V

    .line 244
    return-void
.end method

.method public selectTrack(Lkaaes/spotify/webapi/android/models/Track;)V
    .locals 1
    .param p1, "item"    # Lkaaes/spotify/webapi/android/models/Track;

    .prologue
    .line 149
    iget-object v0, p1, Lkaaes/spotify/webapi/android/models/Track;->preview_url:Ljava/lang/String;

    .line 150
    .local v0, "previewUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->selectUrl(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public selectUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    if-nez p1, :cond_1

    .line 157
    const-string v1, "Track doesn\'t have a preview"

    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->logMessage(Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    if-eqz v1, :cond_0

    .line 164
    const-string v0, ""

    .line 166
    .local v0, "currentTrackUrl":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    :cond_2
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v1, p1}, Lcom/spotify/sdk/android/player/Player;->play(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentPlayerState:Lcom/spotify/sdk/android/player/PlayerState;

    iget-boolean v1, v1, Lcom/spotify/sdk/android/player/PlayerState;->playing:Z

    if-eqz v1, :cond_4

    .line 169
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v1}, Lcom/spotify/sdk/android/player/Player;->pause()V

    goto :goto_0

    .line 171
    :cond_4
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v1}, Lcom/spotify/sdk/android/player/Player;->resume()V

    goto :goto_0
.end method

.method public setMusicStateListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mIMusicStateListener:Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;

    .line 341
    return-void
.end method

.method public skipToNext()V
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v0}, Lcom/spotify/sdk/android/player/Player;->skipToNext()V

    .line 231
    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    invoke-virtual {v0}, Lcom/spotify/sdk/android/player/Player;->skipToPrevious()V

    .line 227
    return-void
.end method

.method public toggleRepeat()V
    .locals 2

    .prologue
    .line 238
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentPlayerState:Lcom/spotify/sdk/android/player/PlayerState;

    iget-boolean v0, v0, Lcom/spotify/sdk/android/player/PlayerState;->repeating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/spotify/sdk/android/player/Player;->setRepeat(Z)V

    .line 239
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleShuffle()V
    .locals 2

    .prologue
    .line 234
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mPlayer:Lcom/spotify/sdk/android/player/Player;

    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->mCurrentPlayerState:Lcom/spotify/sdk/android/player/PlayerState;

    iget-boolean v0, v0, Lcom/spotify/sdk/android/player/PlayerState;->shuffling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/spotify/sdk/android/player/Player;->setShuffle(Z)V

    .line 235
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
