.class public interface abstract Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search$ActionListener;
.super Ljava/lang/Object;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/util/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionListener"
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getCurrentQuery()Ljava/lang/String;
.end method

.method public abstract highBitrate()V
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract loadMoreResults()V
.end method

.method public abstract lowBitrate()V
.end method

.method public abstract normalBitrate()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract search(Ljava/lang/String;Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;)V
.end method

.method public abstract seek()V
.end method

.method public abstract selectTrack(Lkaaes/spotify/webapi/android/models/Track;)V
.end method

.method public abstract selectUrl(Ljava/lang/String;)V
.end method

.method public abstract setMusicStateListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;)V
.end method

.method public abstract skipToNext()V
.end method

.method public abstract skipToPrevious()V
.end method

.method public abstract toggleRepeat()V
.end method

.method public abstract toggleShuffle()V
.end method
