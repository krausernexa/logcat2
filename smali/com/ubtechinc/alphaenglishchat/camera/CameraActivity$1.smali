.class Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$1;
.super Landroid/os/Handler;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity$1;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 24
    return-void
.end method
