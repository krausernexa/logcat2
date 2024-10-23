.class public Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;
.super Ljava/lang/Object;
.source "RobotPlayMusic.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic$1;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic$1;-><init>(Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;)V

    iput-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->handler:Landroid/os/Handler;

    .line 26
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    .line 27
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 28
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 29
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 95
    const-string v0, "mediaPlayer"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 89
    const-string v0, "mediaPlayer"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 74
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 48
    return-void
.end method

.method public playUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 58
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 69
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 80
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->mp:Landroid/media/MediaPlayer;

    .line 83
    :cond_0
    return-void
.end method
