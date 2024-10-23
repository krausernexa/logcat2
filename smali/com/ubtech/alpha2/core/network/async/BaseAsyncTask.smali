.class public Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

.field private isLocalNetWork:Z

.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/network/async/DownLoad;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "bean"    # Lcom/ubtech/alpha2/core/network/async/DownLoad;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLocalNetWork"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    const-class v0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->tag:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    .line 37
    iput-boolean p3, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->isLocalNetWork:Z

    .line 38
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    .line 39
    iput-object p2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 45
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->tag:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/ubtech/alpha2/core/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    invoke-virtual {v2}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Lorg/apache/http/HttpException;

    const-string v3, "============listener is not null============"

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    instance-of v2, v0, Lorg/apache/http/HttpException;

    if-eqz v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    const/16 v3, -0xc8

    invoke-virtual {v2, v3}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->setState(I)V

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    invoke-virtual {v2, v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->setResult(Ljava/lang/Object;)V

    .line 74
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 54
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->isLocalNetWork:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubtech/alpha2/core/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "doInBackground"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    invoke-virtual {v2}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    move-result-object v2

    iget-object v3, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    .line 57
    invoke-virtual {v3}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getRequestCode()I

    move-result v3

    .line 56
    invoke-interface {v2, v3}, Lcom/ubtech/alpha2/core/network/async/OnDataListener;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->setState(I)V

    .line 59
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    invoke-virtual {v2, v1}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .end local v1    # "result":Ljava/lang/Object;
    :goto_2
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    goto :goto_1

    .line 62
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    const/16 v3, -0x190

    invoke-virtual {v2, v3}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->setState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 71
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    const/16 v3, -0x3e7

    invoke-virtual {v2, v3}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->setState(I)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Lcom/ubtech/alpha2/core/network/async/DownLoad;

    .line 90
    .local v0, "bean":Lcom/ubtech/alpha2/core/network/async/DownLoad;
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 92
    :sswitch_0
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getRequestCode()I

    move-result v2

    .line 93
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getResult()Ljava/lang/Object;

    move-result-object v3

    .line 92
    invoke-interface {v1, v2, v3}, Lcom/ubtech/alpha2/core/network/async/OnDataListener;->onSuccess(ILjava/lang/Object;)V

    goto :goto_0

    .line 97
    :sswitch_1
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getRequestCode()I

    move-result v2

    .line 98
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getState()I

    move-result v3

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 97
    invoke-interface {v1, v2, v3, v4}, Lcom/ubtech/alpha2/core/network/async/OnDataListener;->onFailure(IILjava/lang/Object;)V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_1
        -0x190 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoad;

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoad;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ubtech/alpha2/core/network/async/OnDataListener;->onProgress(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
