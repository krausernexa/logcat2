.class Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;
.super Landroid/os/Handler;
.source "DownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    .line 252
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 253
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 256
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 279
    :goto_0
    :pswitch_0
    return-void

    .line 258
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 259
    .local v2, "size":I
    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v3}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$100(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->setProgress(I)V

    .line 260
    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v3}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$100(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    .line 261
    invoke-static {v4}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$100(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 262
    .local v0, "num":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 263
    .local v1, "result":I
    const-string v3, "zdy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u8fdb\u5ea6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v3}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$100(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-static {v4}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->access$100(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->getMax()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 267
    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    iget-object v3, v3, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->mDownLoadOverListener:Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;

    invoke-interface {v3}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;->onDownloadOver()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    iget-object v3, v3, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->mDownLoadOverListener:Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;->onProgrerss(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v0    # "num":F
    .end local v1    # "result":I
    .end local v2    # "size":I
    :pswitch_2
    const-string v3, "zdy"

    const-string v4, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    iget-object v3, v3, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->mDownLoadOverListener:Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;

    const/16 v4, -0xc8

    .line 275
    invoke-interface {v3, v4}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;->onDowanFailed(I)V

    goto/16 :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
