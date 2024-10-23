.class Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$1;
.super Ljava/lang/Object;
.source "SearchPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;
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
    .line 58
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter$1;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 62
    const-string v0, ""

    const-string v1, "!!!! onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPresenter;->access$002(Lcom/spotify/sdk/android/player/Player;)Lcom/spotify/sdk/android/player/Player;

    .line 68
    const-string v0, ""

    const-string v1, "!!!! onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
