.class public Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;
.super Ljava/lang/Thread;
.source "PlayAction.java"


# instance fields
.field private mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;)V
    .locals 0
    .param p1, "musicEngine"    # Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;->mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 25
    const-string v4, ""

    const-string v5, "play run 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    const-string v4, ""

    const-string v5, "play run 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;->mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->hasSong()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    const-string v4, ""

    const-string v5, "play has song"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v1, Ljava/util/Random;

    const-wide/16 v4, 0x3e8

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 31
    .local v1, "random":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int/lit8 v0, v4, 0x3

    .line 32
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 33
    rsub-int/lit8 v0, v0, 0x0

    .line 35
    :cond_0
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;->mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->getSongs()Ljava/util/List;

    move-result-object v3

    .line 36
    .local v3, "songs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 44
    .local v2, "songUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;->mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    invoke-virtual {v4, v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->selectSong(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;->mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->selectSong(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    :cond_1
    if-eqz v2, :cond_2

    .line 49
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "songUrl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;->mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    invoke-virtual {v4, v2}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->playSong(Ljava/lang/String;)V

    .line 53
    .end local v0    # "index":I
    .end local v1    # "random":Ljava/util/Random;
    .end local v2    # "songUrl":Ljava/lang/String;
    .end local v3    # "songs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    monitor-exit p0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
