.class public Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;
.super Ljava/lang/Thread;
.source "SearchJokeAction.java"


# static fields
.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


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

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "conceptMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->mConceptMap:Ljava/util/HashMap;

    .line 34
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->mContext:Landroid/content/Context;

    .line 35
    sput-object p3, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    return-object v0
.end method

.method private findJoke()V
    .locals 4

    .prologue
    .line 46
    const-string v2, "ok."

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;

    invoke-direct {v0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;-><init>()V

    .line 48
    .local v0, "joke":Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;
    const-string v2, "en"

    invoke-virtual {v0, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;->setSystemLanguage(Ljava/lang/String;)V

    .line 49
    const-string v2, ""

    const-string v3, "findJoke"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction$1;

    invoke-direct {v3, p0}, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction$1;-><init>(Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;)V

    invoke-direct {v1, v2, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V

    .line 74
    .local v1, "xx":Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;
    invoke-virtual {v1, v0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->setParamerObj(Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;)V

    .line 75
    const/16 v2, 0x7531

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->doRequest(ILjava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/action/joke/SearchJokeAction;->findJoke()V

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
