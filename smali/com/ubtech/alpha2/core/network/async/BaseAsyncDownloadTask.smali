.class public Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
.super Landroid/os/AsyncTask;
.source "BaseAsyncDownloadTask.java"


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
.field private bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

.field private isLocalNetWork:Z

.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/network/async/DownLoadBen;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "bean"    # Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLocalNetWork"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    const-class v0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->tag:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .line 41
    iput-boolean p3, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->isLocalNetWork:Z

    .line 42
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .line 43
    iput-object p2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 49
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->tag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/ubtech/alpha2/core/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lorg/apache/http/HttpException;

    const-string v2, "============listener is not null============"

    invoke-direct {v1, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!!!! e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    instance-of v1, v0, Lorg/apache/http/HttpException;

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setState(I)V

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    invoke-virtual {v1, v5}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setResult(Z)V

    .line 88
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 57
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->isLocalNetWork:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubtech/alpha2/core/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->tag:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "doInBackground"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->isDownflag()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getDownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Lorg/apache/http/HttpException;

    const-string v2, "============downUrl is not null============"

    invoke-direct {v1, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->getInstance(Landroid/content/Context;)Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .line 66
    invoke-virtual {v1, v2, p0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->download(Lcom/ubtech/alpha2/core/network/async/DownLoadBen;Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;)Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .line 67
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setState(I)V

    .line 68
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setResult(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :goto_2
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    goto :goto_1

    .line 70
    :cond_3
    :try_start_2
    const-string v1, ""

    const-string v2, "!!!!!!!! isDownflag = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    const/16 v2, -0x190

    invoke-virtual {v1, v2}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setState(I)V

    goto :goto_2

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    const/16 v2, -0x190

    invoke-virtual {v1, v2}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setState(I)V

    .line 76
    const-string v1, ""

    const-string v2, "!!!!!!!! not connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 85
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    const/16 v2, -0x3e7

    invoke-virtual {v1, v2}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setState(I)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 103
    move-object v0, p1

    check-cast v0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .line 104
    .local v0, "bean":Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 106
    :sswitch_0
    const-string v1, ""

    const-string v2, "!!!!!!!! download success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getRequestCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;->onSuccess(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/async/DownLoadBen;)V

    goto :goto_0

    .line 112
    :sswitch_1
    const-string v1, ""

    const-string v2, "!!!!!!!! download fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getRequestCode()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getState()I

    move-result v3

    .line 113
    invoke-interface {v1, v2, v3, v0}, Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;->onFailure(Ljava/lang/String;ILcom/ubtech/alpha2/core/network/async/DownLoadBen;)V

    goto :goto_0

    .line 104
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
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->bean:Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getListener()Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;->onProgress(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
