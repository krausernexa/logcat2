.class public Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService$PlayerBinder;
.super Landroid/os/Binder;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService$PlayerBinder;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Player;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService$PlayerBinder;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;->access$000(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PlayerService;)Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    move-result-object v0

    return-object v0
.end method
