.class public Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "WeatherDomain.java"

# interfaces
.implements Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;


# static fields
.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

.field private static weatherDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;


# instance fields
.field private mContext:Landroid/content/Context;

.field private observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

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

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->weatherDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->mContext:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->setBusy(Z)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->threadList:Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->initOpenWM()V

    .line 35
    return-void
.end method

.method public static getWeatherDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 43
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->weatherDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->weatherDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;

    .line 45
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 47
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->weatherDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;

    return-object v0
.end method

.method private initOpenWM()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->getForOpenWMInstance(Landroid/content/Context;)Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    .line 39
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    invoke-virtual {v0, p0}, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;->registerResultListener(Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method public cancelAction()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 74
    .local v0, "item":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 77
    .end local v0    # "item":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public onResultFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->setBusy(Z)V

    .line 90
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v0, p1, v1}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method public onResultSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->setBusy(Z)V

    .line 83
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v0, p1, v1}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 3
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 59
    const-string v1, "Check"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    invoke-direct {v0, v1, p1}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;-><init>(Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 62
    .local v0, "forcast5Action":Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;->start()V

    .line 63
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v0    # "forcast5Action":Lcom/ubtechinc/alphaenglishchat/domain/action/weather/Forcast5Action;
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto :goto_0
.end method
