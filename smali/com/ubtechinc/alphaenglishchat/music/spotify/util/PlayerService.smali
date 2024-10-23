.class public Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;
.super Landroid/app/Service;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService$PlayerBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mPlayer:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService$PlayerBinder;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService$PlayerBinder;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;->mBinder:Landroid/os/IBinder;

    .line 12
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;->mPlayer:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;)Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;->mPlayer:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;->mPlayer:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->release()V

    .line 32
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 33
    return-void
.end method
