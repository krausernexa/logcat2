.class public Lcom/ubtech/alpha2/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/ubtech/alpha2/core/network/async/OnDataListener;


# instance fields
.field private mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

.field protected mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-class v0, Lcom/ubtech/alpha2/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/BaseActivity;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .param p1, "requsetCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/ubtech/alpha2/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/ubtech/alpha2/BaseActivity;->setContentView(I)V

    .line 37
    iput-object p0, p0, Lcom/ubtech/alpha2/BaseActivity;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/ubtech/alpha2/BaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/BaseActivity;->mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    .line 40
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "state"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 67
    sparse-switch p2, :sswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 70
    :sswitch_0
    iget-object v0, p0, Lcom/ubtech/alpha2/BaseActivity;->tag:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/ubtech/alpha2/core/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :sswitch_1
    iget-object v0, p0, Lcom/ubtech/alpha2/BaseActivity;->tag:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\u7f51\u7edc\u6709\u95ee\u9898"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/ubtech/alpha2/core/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        -0x190 -> :sswitch_0
        -0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 62
    return-void
.end method

.method public request(IZ)V
    .locals 1
    .param p1, "requsetCode"    # I
    .param p2, "isLocalNetWork"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ubtech/alpha2/BaseActivity;->mAsyncTaskManager:Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1, p0, p2}, Lcom/ubtech/alpha2/core/network/async/AsyncTaskManager;->request(ILcom/ubtech/alpha2/core/network/async/OnDataListener;Z)V

    .line 44
    return-void
.end method
