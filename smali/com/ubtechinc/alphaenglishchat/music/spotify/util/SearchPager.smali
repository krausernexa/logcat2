.class public Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;
.super Ljava/lang/Object;
.source "SearchPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;
    }
.end annotation


# instance fields
.field private mCurrentOffset:I

.field private mCurrentQuery:Ljava/lang/String;

.field private mPageSize:I

.field private final mSpotifyApi:Lkaaes/spotify/webapi/android/SpotifyService;


# direct methods
.method public constructor <init>(Lkaaes/spotify/webapi/android/SpotifyService;)V
    .locals 0
    .param p1, "spotifyApi"    # Lkaaes/spotify/webapi/android/SpotifyService;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mSpotifyApi:Lkaaes/spotify/webapi/android/SpotifyService;

    .line 28
    return-void
.end method

.method private getData(Ljava/lang/String;IILcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "listener"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "offset"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "limit"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mSpotifyApi:Lkaaes/spotify/webapi/android/SpotifyService;

    new-instance v2, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$1;

    invoke-direct {v2, p0, p4}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$1;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V

    invoke-interface {v1, p1, v0, v2}, Lkaaes/spotify/webapi/android/SpotifyService;->searchTracks(Ljava/lang/String;Ljava/util/Map;Lretrofit/Callback;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getFirstPage(Ljava/lang/String;ILcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "pageSize"    # I
    .param p3, "listener"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    .prologue
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mCurrentOffset:I

    .line 32
    iput p2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mPageSize:I

    .line 33
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mCurrentQuery:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->getData(Ljava/lang/String;IILcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V

    .line 35
    return-void
.end method

.method public getNextPage(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    .prologue
    .line 38
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mCurrentOffset:I

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mPageSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mCurrentOffset:I

    .line 39
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mCurrentQuery:Ljava/lang/String;

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mCurrentOffset:I

    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->mPageSize:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->getData(Ljava/lang/String;IILcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V

    .line 40
    return-void
.end method
