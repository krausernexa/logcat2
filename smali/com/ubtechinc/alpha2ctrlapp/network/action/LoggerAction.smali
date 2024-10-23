.class public Lcom/ubtechinc/alpha2ctrlapp/network/action/LoggerAction;
.super Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;
.source "LoggerAction.java"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/IBaseDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2ctrlapp/network/action/IBaseDataListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/ubtechinc/alpha2ctrlapp/network/action/IBaseDataListener;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/LoggerAction;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/LoggerAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/IBaseDataListener;

    .line 27
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 3
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "system/addDna"

    .line 35
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/LoggerAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    .line 34
    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_1
    const-string v0, ""

    .line 39
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/LoggerAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    .line 38
    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "state"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->onFailure(IILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/LoggerAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/IBaseDataListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/IBaseDataListener;->onFailure(IILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->onSuccess(ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/LoggerAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/IBaseDataListener;

    invoke-interface {v0, p1, p2}, Lcom/ubtechinc/alpha2ctrlapp/network/action/IBaseDataListener;->onSuccess(ILjava/lang/Object;)V

    .line 54
    return-void
.end method
