.class Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$2;
.super Ljava/lang/Object;
.source "SearchPresenter.java"

# interfaces
.implements Lcom/spotify/sdk/android/player/Player$InitializationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->onAuthenticationComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in initialization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public onInitialized(Lcom/spotify/sdk/android/player/Player;)V
    .locals 3
    .param p1, "player"    # Lcom/spotify/sdk/android/player/Player;

    .prologue
    .line 198
    const-string v0, ""

    const-string v1, "-- Player initialized --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->access$000()Lcom/spotify/sdk/android/player/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->access$100(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->access$200(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;Landroid/content/Context;)Lcom/spotify/sdk/android/player/Connectivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/sdk/android/player/Player;->setConnectivityStatus(Lcom/spotify/sdk/android/player/Connectivity;)V

    .line 200
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->access$000()Lcom/spotify/sdk/android/player/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    invoke-virtual {v0, v1}, Lcom/spotify/sdk/android/player/Player;->addPlayerNotificationCallback(Lcom/spotify/sdk/android/player/PlayerNotificationCallback;)V

    .line 201
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->access$000()Lcom/spotify/sdk/android/player/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$2;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    invoke-virtual {v0, v1}, Lcom/spotify/sdk/android/player/Player;->addConnectionStateCallback(Lcom/spotify/sdk/android/player/ConnectionStateCallback;)V

    .line 202
    return-void
.end method
