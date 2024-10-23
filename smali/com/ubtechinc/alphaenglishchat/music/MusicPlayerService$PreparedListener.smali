.class final Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$PreparedListener;
.super Ljava/lang/Object;
.source "MusicPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparedListener"
.end annotation


# instance fields
.field private positon:I

.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;I)V
    .locals 0
    .param p2, "positon"    # I

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$PreparedListener;->this$0:Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p2, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$PreparedListener;->positon:I

    .line 112
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$PreparedListener;->this$0:Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->access$000(Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 117
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$PreparedListener;->positon:I

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$PreparedListener;->this$0:Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->access$000(Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$PreparedListener;->positon:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 120
    :cond_0
    return-void
.end method
