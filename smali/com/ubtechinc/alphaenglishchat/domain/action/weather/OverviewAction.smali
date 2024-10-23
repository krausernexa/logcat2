.class public Lcom/ubtechinc/alphaenglishchat/domain/action/weather/OverviewAction;
.super Ljava/lang/Thread;
.source "OverviewAction.java"


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

.field private mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

.field private observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 1
    .param p1, "observatory"    # Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;
    .param p2, "parseResult"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/OverviewAction;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    .line 19
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/OverviewAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/OverviewAction;->mParseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/OverviewAction;->mConceptMap:Ljava/util/HashMap;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/OverviewAction;->mConceptMap:Ljava/util/HashMap;

    const-string v2, "CITY"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/OverviewAction;->mConceptMap:Ljava/util/HashMap;

    const-string v2, "CITY"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    .local v0, "cityName":Ljava/lang/String;
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/action/weather/OverviewAction;->observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

    invoke-virtual {v1, v0}, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;->getCurrentWeatherData(Ljava/lang/String;)V

    .line 30
    .end local v0    # "cityName":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
