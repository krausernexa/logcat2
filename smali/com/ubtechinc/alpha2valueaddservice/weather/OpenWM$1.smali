.class Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;
.super Ljava/lang/Object;
.source "OpenWM.java"

# interfaces
.implements Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->getCurrentWeatherData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 94
    const-string v3, "3h"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const-string v3, "3h"

    const-string v4, "threeHour"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    :cond_0
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v3

    const-class v4, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;

    invoke-virtual {v3, p2, v4}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;

    .line 99
    .local v1, "openWMCurrentResp":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;
    iget-object v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    invoke-static {v3, v1}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->access$000(Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "weather":Ljava/lang/String;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! weather="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Today "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    invoke-static {v4}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->access$100(Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    iget-object v3, v3, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->weatherResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;

    .line 104
    .local v0, "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    invoke-interface {v0, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;->onResultSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0    # "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    :cond_1
    iget-object v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    iget-object v3, v3, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->weatherResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;

    .line 108
    .restart local v0    # "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    invoke-interface {v0, p2}, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;->onResultFail(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    .end local v0    # "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    .end local v1    # "openWMCurrentResp":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;
    .end local v2    # "weather":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;->this$0:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    iget-object v3, v3, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->weatherResultListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;

    .line 113
    .restart local v0    # "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    invoke-interface {v0, p2}, Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;->onResultFail(Ljava/lang/String;)V

    goto :goto_2

    .line 116
    .end local v0    # "item":Lcom/ubtechinc/alpha2valueaddservice/weather/WeatherResultListener;
    :cond_3
    return-void
.end method
