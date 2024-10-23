.class Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;
.super Ljava/lang/Thread;
.source "AlphaActonServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectCompletedThread"
.end annotation


# instance fields
.field private mStop:Z

.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;
    .param p2, "x1"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;-><init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 97
    const-string v2, "chenlin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DetectCompletedThread mStop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->mStop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mIsClosePowerAfterCompleted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    .line 99
    invoke-static {v4}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$000(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-boolean v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->mStop:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-static {v2}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$000(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 102
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 103
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 116
    .local v1, "param":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 117
    invoke-static {}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->getCommonInstance()Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;

    move-result-object v2

    const/16 v3, 0x19

    array-length v4, v1

    .line 118
    invoke-virtual {v2, v3, v1, v4}, Lcom/ubtechinc/alpha2serverlib/util/Alpha2SerialServiceUtil;->sendCommand(B[BI)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "param":[B
    :cond_2
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$DetectCompletedThread;->mStop:Z

    .line 93
    return-void
.end method
