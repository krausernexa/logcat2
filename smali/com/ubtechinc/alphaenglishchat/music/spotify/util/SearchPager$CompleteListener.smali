.class public interface abstract Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;
.super Ljava/lang/Object;
.source "SearchPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompleteListener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkaaes/spotify/webapi/android/models/Track;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method
