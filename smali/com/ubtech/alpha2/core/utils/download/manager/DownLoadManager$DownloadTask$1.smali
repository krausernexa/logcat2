.class Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask$1;
.super Ljava/lang/Object;
.source "DownLoadManager.java"

# interfaces
.implements Lcom/ubtech/alpha2/core/utils/download/netdownload/DownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;


# direct methods
.method constructor <init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask$1;->this$1:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 228
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 229
    const-string v1, "zdy"

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask$1;->this$1:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    iget-object v1, v1, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    iget-object v1, v1, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->mDownLoadOverListener:Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;

    const/16 v2, -0xc8

    .line 231
    invoke-interface {v1, v2}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;->onDowanFailed(I)V

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 235
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 236
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask$1;->this$1:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    iget-object v1, v1, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v1}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$200(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
