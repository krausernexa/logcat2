.class public Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Player;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnErrorListener;,
        Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnBufferingUpdateListener;,
        Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnPreparedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentTrack:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mCurrentTrack:Ljava/lang/String;

    return-object p1
.end method

.method private createMediaPlayer(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 90
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 91
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnPreparedListener;

    invoke-direct {v1, p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnPreparedListener;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 93
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnBufferingUpdateListener;

    invoke-direct {v1, p0, v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnBufferingUpdateListener;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 94
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnErrorListener;

    invoke-direct {v1, p0, v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$OnErrorListener;-><init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 95
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 96
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 97
    return-void
.end method


# virtual methods
.method public getCurrentTrack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mCurrentTrack:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->release()V

    .line 36
    const-string v0, ""

    const-string v1, "!!!! onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 59
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 46
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->createMediaPlayer(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mCurrentTrack:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not play: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 65
    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    :cond_0
    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mCurrentTrack:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/util/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 76
    :cond_0
    return-void
.end method
