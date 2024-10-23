.class public Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;
.super Ljava/lang/Thread;
.source "SearchAction.java"


# instance fields
.field private mConceptMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

.field private mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 1
    .param p1, "musicEngine"    # Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;
    .param p2, "parseResult"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    .line 21
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mConceptMap:Ljava/util/HashMap;

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "MUSIC_SONG"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "ARTIST"

    .line 29
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "SONG_NAME"

    .line 30
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    :cond_0
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "MUSIC_SONG"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, "soneName":Ljava/lang/String;
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "ARTIST"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "singer":Ljava/lang/String;
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mConceptMap:Ljava/util/HashMap;

    const-string v5, "SONG_NAME"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    .local v3, "soneName2":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_1
    :goto_0
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_2
    const-string v4, ""

    const-string v5, "SearchAction"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v4, "ok."

    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    .line 46
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mMusicEngine:Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;->search(Ljava/lang/String;)V

    .line 50
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "singer":Ljava/lang/String;
    .end local v2    # "soneName":Ljava/lang/String;
    .end local v3    # "soneName2":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    .line 51
    return-void

    .line 37
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "singer":Ljava/lang/String;
    .restart local v2    # "soneName":Ljava/lang/String;
    .restart local v3    # "soneName2":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "singer":Ljava/lang/String;
    .end local v2    # "soneName":Ljava/lang/String;
    .end local v3    # "soneName2":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 48
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
