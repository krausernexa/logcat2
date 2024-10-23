.class public Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;
.super Ljava/lang/Object;
.source "DownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownLoadProgressBar"
.end annotation


# instance fields
.field max:I

.field progress:I

.field final synthetic this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;


# direct methods
.method public constructor <init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->this$0:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->max:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->progress:I

    return v0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->max:I

    .line 309
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;->progress:I

    .line 301
    return-void
.end method
