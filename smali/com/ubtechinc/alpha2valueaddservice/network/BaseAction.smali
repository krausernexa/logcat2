.class public Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;
.super Ljava/lang/Object;
.source "BaseAction.java"

# interfaces
.implements Lcom/ubtechinc/alpha2valueaddservice/network/async/OnDataListener;


# instance fields
.field private mAsyncTaskManager:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;->mContext:Landroid/content/Context;

    .line 18
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;->mAsyncTaskManager:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    .line 19
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;->mAsyncTaskManager:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->cancelRequest()V

    .line 31
    return-void
.end method

.method public cancelRequest(I)V
    .locals 1
    .param p1, "requsetCode"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;->mAsyncTaskManager:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1}, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->cancelRequest(I)V

    .line 27
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
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "state"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 45
    sparse-switch p2, :sswitch_data_0

    .line 59
    :sswitch_0
    return-void

    .line 45
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
    .line 41
    return-void
.end method

.method public request(I)V
    .locals 1
    .param p1, "requsetCode"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;->mAsyncTaskManager:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1, p0}, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->request(ILcom/ubtechinc/alpha2valueaddservice/network/async/OnDataListener;)V

    .line 23
    return-void
.end method
