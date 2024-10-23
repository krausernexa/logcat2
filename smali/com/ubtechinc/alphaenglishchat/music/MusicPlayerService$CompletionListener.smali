.class final Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$CompletionListener;
.super Ljava/lang/Object;
.source "MusicPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$CompletionListener;->this$0:Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyHintMusicState(I)V

    .line 131
    return-void
.end method
