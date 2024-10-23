.class public Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "StoryDanceDomain.java"


# static fields
.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

.field private static storyDanceDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPoem_Story:[Ljava/lang/String;

.field private threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->storyDanceDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->mPoem_Story:[Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->mContext:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->setBusy(Z)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->threadList:Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->init()V

    .line 35
    return-void
.end method

.method public static getStoryDanceDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 38
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->storyDanceDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->storyDanceDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;

    .line 40
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 42
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->storyDanceDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->mPoem_Story:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method private startAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/actions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ubx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "strPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v1, p1}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_Action(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->mContext:Landroid/content/Context;

    const v3, 0x7f080063

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 102
    invoke-interface {v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 105
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v1}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->onCompletion()V

    .line 106
    const-string v1, "zdy"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelAction()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 114
    .local v0, "item":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 117
    .end local v0    # "item":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 9
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "index":I
    const-string v6, "SS_Story_Search"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 69
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "tag"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 70
    .local v5, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 71
    .local v0, "actionName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 72
    sget-object v6, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaStoryList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "newItem":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    move-object v0, v3

    .line 80
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "newItem":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    sget-object v6, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaStoryList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 81
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    sget-object v7, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaStoryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 82
    .local v1, "idx":I
    sget-object v6, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaStoryList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "actionName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 85
    .end local v1    # "idx":I
    .restart local v0    # "actionName":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 87
    sget-object v6, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v6, v0}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_Action(Ljava/lang/String;)V

    .line 94
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :goto_0
    return-void

    .line 89
    .restart local v0    # "actionName":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    goto :goto_0
.end method
