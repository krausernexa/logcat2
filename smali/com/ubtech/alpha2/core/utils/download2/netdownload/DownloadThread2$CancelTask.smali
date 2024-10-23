.class public Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;
.super Ljava/lang/Thread;
.source "DownloadThread2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CancelTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;->this$0:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "zdy"

    const-string v1, "CancelTask conn.disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;->this$0:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;

    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->access$000(Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;->this$0:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;

    invoke-static {v0}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->access$000(Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2$CancelTask;->this$0:Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;->access$002(Lcom/ubtech/alpha2/core/utils/download2/netdownload/DownloadThread2;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 168
    const-string v0, "zdy"

    const-string v1, " conn != null CancelTask conn.disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-void
.end method
