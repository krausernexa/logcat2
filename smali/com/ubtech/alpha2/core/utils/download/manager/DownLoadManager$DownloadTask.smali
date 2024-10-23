.class Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;
.super Ljava/lang/Object;
.source "DownLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation


# instance fields
.field private loader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

.field private path:Ljava/lang/String;

.field private savaFileName:Ljava/lang/String;

.field private saveDir:Ljava/io/File;

.field final synthetic this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "saveDir"    # Ljava/io/File;
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->path:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->saveDir:Ljava/io/File;

    .line 208
    iput-object p4, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->savaFileName:Ljava/lang/String;

    .line 209
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->loader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->loader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->exit()V

    .line 218
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 222
    :try_start_0
    new-instance v0, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v1}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$000(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->saveDir:Ljava/io/File;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->savaFileName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->loader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    .line 224
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$100(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->loader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->getFileSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->setMax(I)V

    .line 226
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->loader:Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;

    new-instance v1, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask$1;-><init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;)V

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/utils/download/netdownload/FileDownloader;->download(Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadProgressListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v6

    .line 241
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$200(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v1}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$200(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
