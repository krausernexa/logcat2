.class Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;
.super Ljava/lang/Object;
.source "Spotify.java"

# interfaces
.implements Lcom/ubtechinc/alphaenglishchat/music/spotify/util/SearchPager$CompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->search(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    .line 169
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getResultListener()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->listeners:Ljava/util/ArrayList;

    .line 168
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkaaes/spotify/webapi/android/models/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lkaaes/spotify/webapi/android/models/Track;>;"
    const-string v1, "Spotify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spotify search success items.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkaaes/spotify/webapi/android/models/Track;

    .line 175
    .local v0, "item":Lkaaes/spotify/webapi/android/models/Track;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->access$000(Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    .end local v0    # "item":Lkaaes/spotify/webapi/android/models/Track;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->access$102(I)I

    .line 179
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->listeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;

    .line 181
    .local v0, "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;->onMusicSearchResultSuccess()V

    goto :goto_1

    .line 185
    .end local v0    # "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->val$query:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->access$202(Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    const-string v1, "Spotify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spotify search error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->listeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;

    .line 195
    .local v0, "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
    invoke-interface {v0}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;->onMusicSearchResultFail()V

    goto :goto_0

    .line 198
    .end local v0    # "item":Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
    :cond_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify$1;->this$0:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->access$300(Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;Ljava/lang/String;)V

    .line 199
    return-void
.end method
