.class Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$1;
.super Lkaaes/spotify/webapi/android/SpotifyCallback;
.source "SearchPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;->getData(Ljava/lang/String;IILcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkaaes/spotify/webapi/android/SpotifyCallback",
        "<",
        "Lkaaes/spotify/webapi/android/models/TracksPager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;

.field final synthetic val$listener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$1;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;

    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$1;->val$listener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    invoke-direct {p0}, Lkaaes/spotify/webapi/android/SpotifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lkaaes/spotify/webapi/android/SpotifyError;)V
    .locals 1
    .param p1, "error"    # Lkaaes/spotify/webapi/android/SpotifyError;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$1;->val$listener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    invoke-interface {v0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;->onError(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lkaaes/spotify/webapi/android/models/TracksPager;

    invoke-virtual {p0, p1, p2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$1;->success(Lkaaes/spotify/webapi/android/models/TracksPager;Lretrofit/client/Response;)V

    return-void
.end method

.method public success(Lkaaes/spotify/webapi/android/models/TracksPager;Lretrofit/client/Response;)V
    .locals 2
    .param p1, "tracksPager"    # Lkaaes/spotify/webapi/android/models/TracksPager;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$1;->val$listener:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;

    iget-object v1, p1, Lkaaes/spotify/webapi/android/models/TracksPager;->tracks:Lkaaes/spotify/webapi/android/models/Pager;

    iget-object v1, v1, Lkaaes/spotify/webapi/android/models/Pager;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;->onComplete(Ljava/util/List;)V

    .line 52
    return-void
.end method
