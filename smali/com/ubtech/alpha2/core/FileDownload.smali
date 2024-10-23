.class public Lcom/ubtech/alpha2/core/FileDownload;
.super Ljava/lang/Object;
.source "FileDownload.java"

# interfaces
.implements Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;


# instance fields
.field private mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->getInstance(Landroid/content/Context;)Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/FileDownload;->mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    .line 25
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ubtech/alpha2/core/FileDownload;->mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->cancelRequest()V

    .line 42
    return-void
.end method

.method public cancelRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "requsetCode"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ubtech/alpha2/core/FileDownload;->mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    invoke-virtual {v0, p1}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->cancelRequest(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public download(Ljava/lang/String;)V
    .locals 2
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtech/alpha2/core/FileDownload;->mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    sget-object v1, Lcom/ubtech/alpha2/FilePath;->appPath:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->download(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "requsetCode"    # Ljava/lang/String;
    .param p2, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ubtech/alpha2/core/FileDownload;->mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;

    sget-object v1, Lcom/ubtech/alpha2/FilePath;->appPath:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1}, Lcom/ubtech/alpha2/core/network/async/AsyncDownloadTaskManager;->download(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onFailure(Ljava/lang/String;ILcom/ubtech/alpha2/core/network/async/DownLoadBen;)V
    .locals 2
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "result"    # Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .prologue
    .line 60
    sparse-switch p2, :sswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 62
    :sswitch_0
    const-string v0, "zdy"

    const-string v1, "-400"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :sswitch_1
    const-string v0, "zdy"

    const-string v1, "-200"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        -0x190 -> :sswitch_0
        -0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 47
    const-string v0, "zdy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/async/DownLoadBen;)V
    .locals 3
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .prologue
    .line 54
    const-string v0, "zdy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
