.class public Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;
.super Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;
.source "Spotify.java"

# interfaces
.implements Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;


# static fields
.field public static final CLIENT_ID:Ljava/lang/String; = "8c7f80a01aa5400ab29ea6749177e706"

.field private static final KEY_CURRENT_QUERY:Ljava/lang/String; = "CURRENT_QUERY"

.field public static final REDIRECT_URI:Ljava/lang/String; = "spotifyiossdkalpha2s://"

.field private static final REQUEST_CODE:I = 0x539

.field private static final TAG:Ljava/lang/String; = "Spotify"

.field private static mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

.field private static mActivity:Landroid/app/Activity;

.field private static songIndex:I

.field private static spofityInstance:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;


# instance fields
.field private lastSearch:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRefreshToken:Ljava/lang/String;

.field private mSearchListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

.field private mToken:Ljava/lang/String;

.field private spotifyLoginApi:Lkaaes/spotify/webapi/android/SpotifyLoginApi;

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

.field private urlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->spofityInstance:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->lastSearch:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mContext:Landroid/content/Context;

    .line 63
    sput-object p2, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActivity:Landroid/app/Activity;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->urlList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->musicSearchResultListenerList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mIMusicStateListenerList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lkaaes/spotify/webapi/android/SpotifyLoginApi;

    invoke-direct {v0}, Lkaaes/spotify/webapi/android/SpotifyLoginApi;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->spotifyLoginApi:Lkaaes/spotify/webapi/android/SpotifyLoginApi;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->lastSearch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->logError(Ljava/lang/String;)V

    return-void
.end method

.method public static getSpotifyInstance(Landroid/content/Context;Landroid/app/Activity;)Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->spofityInstance:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-direct {v0, p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->spofityInstance:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    .line 75
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->spofityInstance:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    return-object v0
.end method

.method private logError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string v0, "Spotify"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method private logMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "Spotify"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private notifySearchFail()V
    .locals 4

    .prologue
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getResultListener()Ljava/util/ArrayList;

    move-result-object v1

    .line 208
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;>;"
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;

    .line 210
    .local v0, "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;->onMusicSearchResultFail()V

    goto :goto_0

    .line 213
    .end local v0    # "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
    :cond_0
    return-void
.end method

.method private refreshToken()V
    .locals 8

    .prologue
    .line 136
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->spotifyLoginApi:Lkaaes/spotify/webapi/android/SpotifyLoginApi;

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lkaaes/spotify/webapi/android/SpotifyLoginApi;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    :try_start_0
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v4

    const-class v5, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;

    invoke-virtual {v4, v3, v5}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;

    .line 141
    .local v2, "refreshResult":Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;->getAccess_token()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mToken:Ljava/lang/String;

    .line 143
    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;->getExpires_in()I

    move-result v1

    .line 144
    .local v1, "expiresIn":I
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mRefreshToken:Ljava/lang/String;

    int-to-long v6, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->saveToken(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "expiresIn":I
    .end local v2    # "refreshResult":Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private selectUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 216
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    invoke-interface {v0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->selectUrl(Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkaaes/spotify/webapi/android/models/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lkaaes/spotify/webapi/android/models/Track;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkaaes/spotify/webapi/android/models/Track;

    .line 227
    .local v0, "item":Lkaaes/spotify/webapi/android/models/Track;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v0    # "item":Lkaaes/spotify/webapi/android/models/Track;
    :cond_0
    return-void
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSongs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->urlList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 304
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkaaes/spotify/webapi/android/models/Track;

    .line 305
    .local v0, "item":Lkaaes/spotify/webapi/android/models/Track;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->urlList:Ljava/util/List;

    iget-object v3, v0, Lkaaes/spotify/webapi/android/models/Track;->uri:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v0    # "item":Lkaaes/spotify/webapi/android/models/Track;
    :cond_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->urlList:Ljava/util/List;

    return-object v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public hasSong()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init()Z
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "isReady":Z
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mToken:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->getRefreshToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mRefreshToken:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mToken:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mRefreshToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->refreshToken()V

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    .line 89
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->destroy()V

    .line 281
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->pause()V

    .line 235
    :cond_0
    return-void
.end method

.method public onPlayFinish()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public onPlayPause()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onPlayResume()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public onPlayStart()V
    .locals 4

    .prologue
    .line 333
    const-string v2, "Spotify"

    const-string v3, "onPlayStart 1 "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getStateListener()Ljava/util/ArrayList;

    move-result-object v1

    .line 337
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;>;"
    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;

    .line 339
    .local v0, "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;
    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;->onPlayStart()V

    goto :goto_0

    .line 342
    .end local v0    # "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;
    :cond_0
    return-void
.end method

.method public onPlayStop()V
    .locals 4

    .prologue
    .line 356
    const-string v2, "Spotify"

    const-string v3, "onPlayStop 1 "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getStateListener()Ljava/util/ArrayList;

    move-result-object v1

    .line 359
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;>;"
    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;

    .line 361
    .local v0, "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;
    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;->onPlayStop()V

    goto :goto_0

    .line 364
    .end local v0    # "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->resume()V

    .line 241
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 270
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->getCurrentQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "CURRENT_QUERY"

    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    invoke-interface {v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->getCurrentQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onSkipToNext()Z
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    .line 247
    sget v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "hasNext":Z
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    sget v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkaaes/spotify/webapi/android/models/Track;

    iget-object v1, v1, Lkaaes/spotify/webapi/android/models/Track;->uri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->selectUrl(Ljava/lang/String;)V

    .line 253
    :goto_0
    return v0

    .line 251
    .end local v0    # "hasNext":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasNext":Z
    goto :goto_0
.end method

.method public onSkipToPrevious()Z
    .locals 3

    .prologue
    .line 259
    sget v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    if-lez v1, :cond_0

    .line 260
    sget v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    .line 261
    const/4 v0, 0x1

    .line 262
    .local v0, "hasPrevious":Z
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    sget v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkaaes/spotify/webapi/android/models/Track;

    iget-object v1, v1, Lkaaes/spotify/webapi/android/models/Track;->uri:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->selectUrl(Ljava/lang/String;)V

    .line 266
    :goto_0
    return v0

    .line 264
    .end local v0    # "hasPrevious":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasPrevious":Z
    goto :goto_0
.end method

.method public playSong(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->selectUrl(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    .line 120
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->init(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    invoke-interface {v0, p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->setMusicStateListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;)V

    .line 122
    return-void
.end method

.method public requestToken()V
    .locals 5

    .prologue
    .line 102
    new-instance v1, Lcom/spotify/sdk/android/authentication/AuthenticationRequest$Builder;

    const-string v2, "8c7f80a01aa5400ab29ea6749177e706"

    sget-object v3, Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;->TOKEN:Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;

    const-string v4, "spotifyiossdkalpha2s://"

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/sdk/android/authentication/AuthenticationRequest$Builder;-><init>(Ljava/lang/String;Lcom/spotify/sdk/android/authentication/AuthenticationResponse$Type;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user-read-private"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "streaming"

    aput-object v4, v2, v3

    .line 103
    invoke-virtual {v1, v2}, Lcom/spotify/sdk/android/authentication/AuthenticationRequest$Builder;->setScopes([Ljava/lang/String;)Lcom/spotify/sdk/android/authentication/AuthenticationRequest$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/spotify/sdk/android/authentication/AuthenticationRequest$Builder;->build()Lcom/spotify/sdk/android/authentication/AuthenticationRequest;

    move-result-object v0

    .line 106
    .local v0, "request":Lcom/spotify/sdk/android/authentication/AuthenticationRequest;
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x539

    invoke-static {v1, v2, v0}, Lcom/spotify/sdk/android/authentication/AuthenticationClient;->openLoginActivity(Landroid/app/Activity;ILcom/spotify/sdk/android/authentication/AuthenticationRequest;)V

    .line 107
    const-string v1, ""

    const-string v2, "!!! requestToken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public requestToken(I)V
    .locals 7
    .param p1, "i"    # I

    .prologue
    .line 111
    const-string v2, "streaming"

    .line 112
    .local v2, "scope":Ljava/lang/String;
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 113
    .local v0, "random":Ljava/util/Random;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v6

    add-int/lit16 v6, v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "state":Ljava/lang/String;
    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->spotifyLoginApi:Lkaaes/spotify/webapi/android/SpotifyLoginApi;

    invoke-virtual {v5, v2, v3}, Lkaaes/spotify/webapi/android/SpotifyLoginApi;->getAuthorize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 116
    .local v4, "x":I
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    return-void
.end method

.method public saveToken(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "refreshToken"    # Ljava/lang/String;
    .param p3, "expireIn"    # J

    .prologue
    .line 125
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mToken:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mRefreshToken:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mContext:Landroid/content/Context;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p3, p4, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->setToken(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 128
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mContext:Landroid/content/Context;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p2, p3, p4, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/CredentialsHandler;->setRefreshToken(Landroid/content/Context;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 129
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    if-nez v2, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->notifySearchFail()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->lastSearch:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getResultListener()Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;>;"
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;

    .line 162
    .local v0, "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;->onMusicSearchResultSuccess()V

    goto :goto_1

    .line 167
    .end local v0    # "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;>;"
    :cond_2
    new-instance v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;

    invoke-direct {v2, p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mSearchListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    .line 202
    sget-object v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mActionListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->mSearchListener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    invoke-interface {v2, p1, v3}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;->search(Ljava/lang/String;Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V

    goto :goto_0
.end method

.method public selectSong(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "url":Ljava/lang/String;
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 314
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 315
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkaaes/spotify/webapi/android/models/Track;

    iget-object v1, v2, Lkaaes/spotify/webapi/android/models/Track;->uri:Ljava/lang/String;

    .line 316
    sput p1, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    .line 328
    :cond_0
    :goto_0
    return-object v1

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 320
    .local v0, "length":I
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->trackList:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkaaes/spotify/webapi/android/models/Track;

    iget-object v1, v2, Lkaaes/spotify/webapi/android/models/Track;->uri:Ljava/lang/String;

    .line 321
    add-int/lit8 v2, v0, -0x1

    sput v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->songIndex:I

    goto :goto_0

    .line 325
    .end local v0    # "length":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
