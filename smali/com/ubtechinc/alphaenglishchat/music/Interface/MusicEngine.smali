.class public abstract Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;
.super Ljava/lang/Object;
.source "MusicEngine.java"


# instance fields
.field protected mIMusicStateListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected musicSearchResultListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->musicSearchResultListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getSongs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getStateListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->mIMusicStateListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract hasSong()Z
.end method

.method public abstract playSong(Ljava/lang/String;)V
.end method

.method public registerResultListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->musicSearchResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->musicSearchResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public registerStateListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->mIMusicStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->mIMusicStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    return-void
.end method

.method public abstract search(Ljava/lang/String;)V
.end method

.method public abstract selectSong(I)Ljava/lang/String;
.end method

.method public unRegisterResultListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->musicSearchResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public unRegisterStateListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->mIMusicStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method
