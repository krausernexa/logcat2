.class Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnPreparedListener;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPreparedListener"
.end annotation


# instance fields
.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnPreparedListener;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnPreparedListener;->mUrl:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 27
    const-string v0, ""

    const-string v1, "!!!! onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 29
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnPreparedListener;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnPreparedListener;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->access$002(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    return-void
.end method
