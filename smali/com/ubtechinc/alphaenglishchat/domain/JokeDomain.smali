.class public Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "JokeDomain.java"


# static fields
.field private static jokeDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;

.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# instance fields
.field private mContext:Landroid/content/Context;

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
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->jokeDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->setBusy(Z)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->threadList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public static getJokeDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 34
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->jokeDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->jokeDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;

    .line 36
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 38
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->jokeDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;

    return-object v0
.end method


# virtual methods
.method public cancelAction()V
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 57
    .local v0, "item":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 60
    .end local v0    # "item":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 4
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 44
    const-string v1, "Search"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;-><init>(Ljava/util/HashMap;Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V

    .line 46
    .local v0, "searchJokeAction":Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->start()V

    .line 47
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v0    # "searchJokeAction":Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    goto :goto_0
.end method
