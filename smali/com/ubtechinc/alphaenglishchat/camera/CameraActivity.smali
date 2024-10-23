.class public Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private preview:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$1;-><init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;)Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->preview:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    return-object v0
.end method


# virtual methods
.method public back(Ljava/lang/String;)V
    .locals 3
    .param p1, "savaPath"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtrobot.action.transfer_photo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "photo_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    const-string v1, "CameraActivity"

    const-string v2, " finish CameraActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->finish()V

    .line 57
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 42
    const/high16 v0, 0x7f0a0000

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->preview:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .line 43
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->preview:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setHandler(Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;)V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->init()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$2;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$2;-><init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    return-void
.end method

.method public takePicture(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;->preview:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->takePicture()V

    .line 48
    return-void
.end method
