.class public Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;
.super Ljava/lang/Object;
.source "BaseAction.java"

# interfaces
.implements Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;


# instance fields
.field private mAsyncTaskManager:Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;

.field protected mContext:Landroid/content/Context;

.field private paramerObj:Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->mAsyncTaskManager:Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;

    .line 25
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->mAsyncTaskManager:Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;->cancelRequest()V

    .line 45
    return-void
.end method

.method public cancelRequest(I)V
    .locals 1
    .param p1, "requsetCode"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->mAsyncTaskManager:Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1}, Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;->cancelRequest(I)V

    .line 41
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public doRequest(ILjava/lang/String;)V
    .locals 4
    .param p1, "requestType"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    .line 48
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->setRequestTime(Ljava/lang/String;)V

    .line 49
    const-string v0, "alice_question"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->getRequestTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "talkserver123%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/DesUtil;->getMD5(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->setRequestKey(Ljava/lang/String;)V

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->request(I)V

    .line 59
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->getRequestTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UBTech832%1293*6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/DesUtil;->getMD5(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;->setRequestKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 67
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 69
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->paramerObj:Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "state"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 85
    sparse-switch p2, :sswitch_data_0

    .line 99
    :sswitch_0
    return-void

    .line 85
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_0
        -0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 81
    return-void
.end method

.method public request(I)V
    .locals 1
    .param p1, "requsetCode"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->mAsyncTaskManager:Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1, p0}, Lcom/ubtechinc/alpha2ctrlapp/network/async/AsyncTaskManager;->request(ILcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;)V

    .line 37
    return-void
.end method

.method public setParamerObj(Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;)V
    .locals 0
    .param p1, "paramerObj"    # Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->paramerObj:Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    .line 29
    return-void
.end method
