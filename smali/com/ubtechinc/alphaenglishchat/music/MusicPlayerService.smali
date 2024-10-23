.class public Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;
.super Landroid/app/Service;
.source "MusicPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$CompletionListener;,
        Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$PreparedListener;
    }
.end annotation


# static fields
.field private static final MUSIC_PATH:Ljava/lang/String; = ""

.field public static final PAUSE_MSG:I = 0x2

.field public static final PLAY_MSG:I = 0x1

.field public static final STOP_MSG:I = 0x3


# instance fields
.field private isPause:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private pause()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->isPause:Z

    .line 75
    :cond_0
    return-void
.end method

.method private play(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 56
    const v1, 0x7f040004

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 57
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$CompletionListener;

    invoke-direct {v2, p0}, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService$CompletionListener;-><init>(Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 58
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 98
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 100
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->stop()V

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    const-string v1, "MSG"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "msg":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 38
    invoke-direct {p0, v2}, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->play(I)V

    .line 45
    .end local v0    # "msg":I
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 39
    .restart local v0    # "msg":I
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 40
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->pause()V

    goto :goto_0

    .line 41
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/music/MusicPlayerService;->stop()V

    goto :goto_0
.end method
