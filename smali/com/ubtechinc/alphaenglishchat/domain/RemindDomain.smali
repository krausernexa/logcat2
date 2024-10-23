.class public Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "RemindDomain.java"


# static fields
.field private static remindDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;

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
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->remindDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->mContext:Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->setBusy(Z)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->threadList:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public static getRemindDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 36
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->remindDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->remindDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;

    .line 38
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 40
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->remindDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;

    return-object v0
.end method


# virtual methods
.method public cancelAction()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 64
    .local v0, "item":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 67
    .end local v0    # "item":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 4
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 46
    const-string v2, "Set"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-direct {v1, p1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;-><init>(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V

    .line 48
    .local v1, "setAction":Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;
    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;->start()V

    .line 49
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v1    # "setAction":Lcom/ubtechinc/alphaenglishchat/domain/action/remind/SetAction;
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v2, "Check"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-direct {v0, p1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;-><init>(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V

    .line 52
    .local v0, "checkAction":Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;->start()V

    .line 53
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v0    # "checkAction":Lcom/ubtechinc/alphaenglishchat/domain/action/remind/CheckAction;
    :cond_1
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto :goto_0
.end method
